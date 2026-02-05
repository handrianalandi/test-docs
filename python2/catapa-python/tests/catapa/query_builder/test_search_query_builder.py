"""Tests for SearchQueryBuilder.

This module contains tests for the query builder class.

Authors:
    Handrian Alandi (handrian.alandi@gdplabs.id)

References:
    NONE
"""

from datetime import date

import pytest
from catapa.query_builder import SearchQueryBuilder


def test_fluent_interface_and_basic_logic():
    """
    Condition:
    SearchQueryBuilder is used with various operations including empty state, method chaining, and multiple build calls.

    Expected:
    Empty builder returns empty dict and empty string.
    Methods return self for chaining. Multiple build calls return consistent results.
    """
    builder = SearchQueryBuilder()
    assert builder.build() == {}
    assert builder.build_query() == ""

    assert builder.search("a", 1) is builder
    assert builder.filter("b", 2) is builder

    res1 = builder.build_query()
    assert res1 == builder.build_query()


@pytest.mark.parametrize("method, field, value, expected_query", [
    ("search", "name", "John Doe", "(name:John%20Doe)"),
    ("search", "email", "test@a.com", "(email:test%40a.com)"),
    ("filter", "active", True, "(active:true)"),
    ("filter", "active", False, "(active:false)"),
    ("search", "day", date(2024, 1, 1), "(day:2024-01-01)"),
    ("search", "age", [18, 30], "(age>18,age<30)"),
    ("filter", "score", {"from": 10}, "(score>10)"),
    ("filter", "score", {"to": 20}, "(score<20)"),
    ("filter", "score", {"from": None, "to": None}, ""),
    ("filter", "code", {"in": ["A", "B"]}, "(codeIn:A;B)"),
    ("filter", "code", {"in": "Single"}, "(codeIn:Single)"),
    ("filter", "code", {"in": None}, ""),
    ("filter", "id", {"from": 1, "in": [2, 3]}, "(id>1,idIn:2;3)"),
])
def test_query_formatting_logic(method, field, value, expected_query):
    """
    Condition:
    SearchQueryBuilder is used with various value types including primitives, dates, ranges, and operators.

    Expected:
    Query string is correctly formatted with proper URL encoding, date formatting, range queries, and operator handling.
    """
    builder = SearchQueryBuilder()
    getattr(builder, method)(field, value)
    assert builder.build_query() == expected_query


def test_complex_nesting_coverage():
    """
    Condition:
    SearchQueryBuilder combines search and filter operations with nested query structures.

    Expected:
    Query object and query string correctly represent nested AND/OR logic with proper grouping.
    """
    builder = SearchQueryBuilder()
    result = builder.search("name", "John").filter("role", "Admin").build()

    expected = {
        "$and": [
            {"$or": [{"name": "John"}]},
            {"$and": [{"role": "Admin"}]}
        ]
    }
    assert result == expected
    assert builder.build_query() == "((name:John),(role:Admin))"


@pytest.mark.parametrize("method_name, value, expected", [
    ("_parse_and_operator", "not-a-list", ""),
    ("_parse_and_operator", [], ""),
    ("_parse_or_operator", "not-a-list", ""),
    ("_parse_or_operator", [], ""),
    ("_parse_expression", {"valid": "yes", "invalid": None, "$skip": 1}, "valid:yes"),
    ("_parse_and_operator", [{"$or": [{"a": 1}]}], "((a:1))"),
    ("_parse_or_operator", [{"key": None}, {"$unknown": "value"}], ""),
    ("_parse_and_operator", [{"key": None}, {"$unknown": "value"}], ""),
    ("_parse_expression", {"$or": [], "other": "value"}, "other:value"),
    ("_parse_expression", {"$and": [], "other": "value"}, "other:value"),
    ("_parse_expression", {"$or": [], "$and": [], "valid": "yes"}, "valid:yes"),
])
def test_internal_edge_cases(method_name, value, expected):
    """
    Condition:
    Internal parsing methods receive various edge cases including
    invalid inputs, empty values, None values, and nested structures.

    Expected:
    Methods handle edge cases correctly,
    returning empty strings for invalid inputs and properly filtering or skipping invalid values.
    """
    builder = SearchQueryBuilder()
    method = getattr(builder, method_name)
    assert method(value) == expected
