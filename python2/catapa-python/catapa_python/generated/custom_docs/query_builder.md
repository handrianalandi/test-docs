# Query Builder

The `SearchQueryBuilder` provides a fluent interface for building complex search queries with OR (search) and AND (filter) operations for the CATAPA API.

## Quick Start

A complete Hello World example to get you started immediately.

```python
from catapa import SearchQueryBuilder

# Build a simple search query
query_string = SearchQueryBuilder().search("name", "John").build_query()
# Result: "(name:John)"
```

> **💡 Tip:** The query builder uses method chaining, so you can build complex queries by chaining multiple `.search()` and `.filter()` calls together.

**Key Concepts:**

- **`.search(field, value)`** - Adds OR condition (matches if ANY field contains value)
- **`.filter(field, value)`** - Adds AND condition (matches only if ALL conditions are met)
- **`.build_query()`** - Converts the query to a URL-encoded string ready for API requests

## Tutorials

More intermediate examples to help you learn the query builder.

### Tutorial 1: OR Search (Multiple Values)

Search for records matching ANY of multiple values.

```python
from catapa import SearchQueryBuilder

# Find employees with 'a' OR 'b' in name
query_string = (
    SearchQueryBuilder().search("name", "a").search("name", "b").build_query()
)
# Result: "(name:a|name:b)"
```

### Tutorial 2: AND Filter (Multiple Conditions)

Filter records that match ALL conditions.

```python
from catapa import SearchQueryBuilder

# Find employees with name containing 'a' AND hired after 2024
query_string = (
    SearchQueryBuilder()
    .search("name", "a")
    .filter("startDate", {"from": "2024-01-01"})
    .build_query()
)
# Result: "((name:a),(startDate>2024-01-01))"
```

### Tutorial 3: Date Range Filtering

Filter by date ranges using `from` and `to` operators.

```python
from catapa import SearchQueryBuilder

# Find employees hired after 2020
query_string = (
    SearchQueryBuilder().filter("startDate", {"from": "2020-01-01"}).build_query()
)
# Result: "(startDate>2020-01-01)"

# Find employees hired between 2020 and 2023
query_string = (
    SearchQueryBuilder()
    .filter("startDate", {"from": "2020-01-01", "to": "2023-12-31"})
    .build_query()
)
# Result: "(startDate>2020-01-01,startDate<2023-12-31)"
```

### Tutorial 4: IN Operator

Filter by multiple values using the `in` operator.

```python
from catapa import SearchQueryBuilder

# Find employees with specific status values
query_string = (
    SearchQueryBuilder().filter("status", {"in": ["active", "pending"]}).build_query()
)
# Result: "(statusIn:active;pending)"
```

## Cookbook

Intermediate to Advanced examples for real-world scenarios.

### Cookbook 1: Complex Multi-Field Search

Build complex queries with multiple search fields and filters.

```python
from catapa import SearchQueryBuilder

# Search by name OR email, AND filter by active status AND date range
query_string = (
    SearchQueryBuilder()
    .search("name", "John")
    .search("email", "john@example.com")
    .filter("isActive", True)
    .filter("startDate", {"from": "2024-01-01", "to": "2024-12-31"})
    .build_query()
)
# Result: "((name:John|email:john@example.com),(isActive:true,startDate>2024-01-01,startDate<2024-12-31))"
```

### Cookbook 2: Dynamic Query Building

Build queries dynamically based on user input or conditions.

```python
from catapa import SearchQueryBuilder
from typing import Optional


def build_employee_query(
    name: Optional[str] = None,
    email: Optional[str] = None,
    is_active: Optional[bool] = None,
    start_date_from: Optional[str] = None,
    start_date_to: Optional[str] = None,
) -> str:
    """Build a query dynamically based on provided parameters."""
    builder = SearchQueryBuilder()

    # Add search conditions if provided
    if name:
        builder.search("name", name)
    if email:
        builder.search("email", email)

    # Add filter conditions if provided
    if is_active is not None:
        builder.filter("isActive", is_active)

    # Add date range if provided
    if start_date_from or start_date_to:
        date_range = {}
        if start_date_from:
            date_range["from"] = start_date_from
        if start_date_to:
            date_range["to"] = start_date_to
        builder.filter("startDate", date_range)

    return builder.build_query()


# Usage
query_string = build_employee_query(
    name="John", is_active=True, start_date_from="2024-01-01"
)
```

### Cookbook 3: Reusable Query Builder Functions

Create reusable functions for common query patterns.

```python
from catapa import SearchQueryBuilder
from datetime import date, timedelta


def active_employees_in_date_range(start_date: date, end_date: date) -> str:
    """Build query for active employees within a date range."""
    return (
        SearchQueryBuilder()
        .filter("isActive", True)
        .filter("startDate", {"from": start_date, "to": end_date})
        .build_query()
    )


def search_employees_by_name_or_email(search_term: str) -> str:
    """Build query to search employees by name or email."""
    return (
        SearchQueryBuilder()
        .search("name", search_term)
        .search("email", search_term)
        .build_query()
    )


def employees_by_ids(employee_ids: list[str]) -> str:
    """Build query to filter employees by their IDs."""
    return SearchQueryBuilder().filter("id", {"in": employee_ids}).build_query()


# Usage
today = date.today()
last_month = today - timedelta(days=30)

query1 = active_employees_in_date_range(last_month, today)
query2 = search_employees_by_name_or_email("john")
query3 = employees_by_ids(["123", "456", "789"])
```

## Query Syntax Reference

### Value Types

The query builder supports various value types:

**Strings and Numbers:**

```python
SearchQueryBuilder().search("name", "John").build_query()
# → "(name:John)"

SearchQueryBuilder().filter("age", 25).build_query()
# → "(age:25)"
```

**Booleans:**

```python
SearchQueryBuilder().filter("isActive", True).build_query()
# → "(isActive:true)"
```

**Dates:**

```python
from datetime import date, datetime

SearchQueryBuilder().filter("startDate", date(2024, 1, 1)).build_query()
# → "(startDate:2024-01-01)"

SearchQueryBuilder().filter("startDate", "2024-01-01").build_query()
# → "(startDate:2024-01-01)"
```

**Date Ranges:**

```python
# Using dictionary with "from" and/or "to"
SearchQueryBuilder().filter(
    "startDate", {"from": "2024-01-01", "to": "2024-12-31"}
).build_query()
# → "(startDate>2024-01-01,startDate<2024-12-31)"

# Only "from" (greater than)
SearchQueryBuilder().filter("startDate", {"from": "2024-01-01"}).build_query()
# → "(startDate>2024-01-01)"

# Only "to" (less than)
SearchQueryBuilder().filter("endDate", {"to": "2024-12-31"}).build_query()
# → "(endDate<2024-12-31)"
```

**IN Operator:**

```python
# List of values (semicolon-separated in query)
SearchQueryBuilder().filter("id", {"in": ["123", "456", "789"]}).build_query()
# → "(idIn:123;456;789)"
```

### Query Structure Examples

```python
# Simple search
SearchQueryBuilder().search("name", "John").build_query()
# → "(name:John)"

# OR search (multiple values)
SearchQueryBuilder().search("name", "John").search("name", "Jane").build_query()
# → "(name:John|name:Jane)"

# AND filter (multiple conditions)
SearchQueryBuilder().filter("isActive", True).filter(
    "organizationId", "123"
).build_query()
# → "(isActive:true,organizationId:123)"

# Combined search and filter
(SearchQueryBuilder().search("name", "John").filter("isActive", True).build_query())
# → "((name:John),(isActive:true))"
```

## Tips and Best Practices

1. **Method Chaining**: Take advantage of method chaining to build queries fluently
2. **Reusability**: Create helper functions for common query patterns
3. **Dynamic Building**: Build queries conditionally based on user input or application state
4. **Date Handling**: Use Python `date` or `datetime` objects for better type safety
5. **URL Encoding**: The builder automatically handles URL encoding, so you don't need to encode values manually
