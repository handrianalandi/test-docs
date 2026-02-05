"""Query Builder for CATAPA API.

A fluent interface for building search queries with OR (search) and AND (filter) operations.

Authors:
    Handrian Alandi (handrian.alandi@gdplabs.id)
"""

import urllib.parse
from datetime import date, datetime
from typing import Any, Dict, List

from catapa.query_builder.constants import KEY_FROM, KEY_IN, KEY_TO, OPERATOR_AND, OPERATOR_OR


class SearchQueryBuilder:
    """Fluent builder for constructing search queries.

    This builder allows chaining of search (OR) and filter (AND) operations
    to construct queries for the CATAPA API.

    Example:
        >>> builder = SearchQueryBuilder()
        >>> query_string = (builder
        ...     .search("name", "John")
        ...     .search("email", "john@example.com")
        ...     .filter("isActive", True)
        ...     .build_query())
        >>> # Returns: "((name:John|email:john@example.com),(isActive:true))"
    """

    def __init__(self) -> None:
        """Initialize an empty SearchQueryBuilder."""
        self._or_fields: List[Dict[str, Any]] = []
        self._and_fields: List[Dict[str, Any]] = []
        self._separator = ","
        self._or_separator = "|"

    def search(self, field: str, value: Any) -> "SearchQueryBuilder":
        """Add a search field (OR condition).

        Multiple search fields are combined with OR logic.

        Args:
            field: The field name to search.
            value: The value to search for.

        Returns:
            Self for method chaining.
        """
        self._or_fields.append({field: value})
        return self

    def filter(self, field: str, value: Any) -> "SearchQueryBuilder":
        """Add a filter field (AND condition).

        Multiple filter fields are combined with AND logic.

        Args:
            field: The field name to filter.
            value: The value to filter by.

        Returns:
            Self for method chaining.
        """
        self._and_fields.append({field: value})
        return self

    def build(self) -> Dict[str, Any]:
        """Build the final query object.

        Returns:
            The constructed query object (useful for advanced use cases).
        """
        expressions: List[Dict[str, Any]] = []

        if self._or_fields:
            expressions.append({OPERATOR_OR: self._or_fields})

        if self._and_fields:
            expressions.append({OPERATOR_AND: self._and_fields})

        if not expressions:
            return {}
        elif len(expressions) == 1:
            return expressions[0]
        else:
            return {OPERATOR_AND: expressions}

    def build_query(self) -> str:
        """Build and convert to query string in one step.

        Returns:
            URL-encoded query string ready for API requests.

        Example:
            >>> builder = SearchQueryBuilder()
            >>> query_string = (builder
            ...     .search("name", "John")
            ...     .filter("isActive", True)
            ...     .build_query())
            >>> # Returns: "((name:John),(isActive:true))"
        """
        query_obj = self.build()
        return self._build_query_string(query_obj)

    def _build_query_string(self, expression: Dict[str, Any]) -> str:
        """Build a query string from a JSON expression.

        Args:
            expression: JSON object representing the query structure.

        Returns:
            URL-encoded query string ready to use in API requests.
        """
        if not expression:
            return ""

        result = self._parse_expression(expression)
        return result if result else ""

    def _parse_expression(self, expr: Dict[str, Any]) -> str:
        """Parse an expression recursively.

        Args:
            expr: Expression dictionary to parse.

        Returns:
            Parsed query string fragment.
        """
        parts: List[str] = []

        for key, value in expr.items():
            if key == OPERATOR_AND:
                part = self._parse_and_operator(value)
                if part:
                    parts.append(part)
            elif key == OPERATOR_OR:
                part = self._parse_or_operator(value)
                if part:
                    parts.append(part)
            elif key.startswith("$"):
                continue  # Skip other operators for now
            elif value is not None:
                parts.append(self._format_field_value(key, value))

        return self._separator.join(parts) if parts else ""

    def _parse_and_operator(self, value: Any) -> str:
        """Parse AND operator expression.

        Args:
            value: Value to parse (should be a list).

        Returns:
            Parsed query string fragment, or empty string if invalid.
        """
        if not isinstance(value, list):
            return ""

        sub_parts = [self._parse_expression(v) for v in value if v]
        sub_parts = [p for p in sub_parts if p]

        if not sub_parts:
            return ""

        return f"({self._separator.join(sub_parts)})"

    def _parse_or_operator(self, value: Any) -> str:
        """Parse OR operator expression.

        Args:
            value: Value to parse (should be a list).

        Returns:
            Parsed query string fragment, or empty string if invalid.
        """
        if not isinstance(value, list):
            return ""

        sub_parts = [self._parse_expression(v) for v in value if v]
        sub_parts = [p for p in sub_parts if p]

        if not sub_parts:
            return ""

        return f"({self._or_separator.join(sub_parts)})"

    def _format_field_value(self, field: str, value: Any) -> str:
        """Format a field-value pair into query string.

        Args:
            field: Field name.
            value: Field value.

        Returns:
            Formatted query string fragment.
        """
        if isinstance(value, (datetime, date)):
            date_str = value.strftime("%Y-%m-%d")
            return f"{field}:{self._encode(date_str)}"

        if isinstance(value, bool):
            bool_str = "true" if value else "false"
            return f"{field}:{bool_str}"

        if isinstance(value, list) and len(value) > 0:
            return self._build_array_query(value, field)

        if isinstance(value, dict):
            return self._build_object_query(value, field)

        return f"{field}:{self._encode(str(value))}"

    def _build_array_query(self, value: List[Any], field: str) -> str:
        """Build query for array value (date range).

        Args:
            value: List of date values.
            field: Field name.

        Returns:
            Query string fragment for date range.
        """
        start_val = self._encode(str(value[0]))
        end_val = self._encode(str(value[-1]))
        return f"{field}>{start_val},{field}<{end_val}"

    def _build_object_query(self, value: Dict[str, Any], field: str) -> str:
        """Build query for object value (date range and 'in' operator).

        Args:
            value: Dictionary with from/to/in keys.
            field: Field name.

        Returns:
            Query string fragment.
        """
        result: List[str] = []

        if KEY_FROM in value and value[KEY_FROM] is not None:
            from_val = self._encode(str(value[KEY_FROM]))
            result.append(f"{field}>{from_val}")

        if KEY_TO in value and value[KEY_TO] is not None:
            to_val = self._encode(str(value[KEY_TO]))
            result.append(f"{field}<{to_val}")

        if KEY_IN in value and value[KEY_IN] is not None:
            in_value = value[KEY_IN]
            if isinstance(in_value, list):
                encoded_values = [self._encode(str(v)) for v in in_value]
                semicolon_separated = ";".join(encoded_values)
            else:
                semicolon_separated = self._encode(str(in_value))
            result.append(f"{field}In:{semicolon_separated}")

        return self._separator.join(result) if result else ""

    def _encode(self, value: str) -> str:
        """Encode a string value for URL query parameters.

        Args:
            value: String value to encode.

        Returns:
            URL-encoded string.
        """
        return urllib.parse.quote(value, safe="")
