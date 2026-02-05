"""Example usage of the Query Builder for CATAPA Public Python SDK.

This example demonstrates real API calls using SearchQueryBuilder,
progressing from simple to complex queries with actual CATAPA API endpoints.

Reference: https://gdplabs.gitbook.io/catapa-rest-api/

Authors:
    Handrian Alandi (handrian.alandi@gdplabs.id)
"""

import sys
from pathlib import Path

from catapa import Catapa, EmployeeApi, SearchQueryBuilder

# Setup paths for development environment
sdk_root = Path(__file__).parent.parent
sys.path.insert(0, str(sdk_root / "catapa_python"))
sys.path.insert(0, str(sdk_root / "catapa_python" / "generated"))

def print_section(title: str, emoji: str = "📋") -> None:
    """Print a formatted section header."""
    print(f"\n{'=' * 80}")
    print(f"{emoji}  {title}")
    print(f"{'=' * 80}")


def print_query_info(query_string: str) -> None:
    """Print query information."""
    print(f"Query String: {query_string}")


def print_error(e: Exception) -> None:
    """Print detailed error information."""
    print(f"❌ Error: {e}")
    if hasattr(e, 'response') and e.response is not None:
        print(f"   Status Code: {e.response.status_code}")
        print(f"   Response Body: {e.response.text}")


def example_1_simple_search(employee_api: EmployeeApi) -> None:
    """Example 1: Simple search - Find employees by name (easiest)."""
    print_section("Example 1: Simple Search", "🔍")
    print("Goal: Find employees with 'a' in the name")
    print()

    # Build query in one fluent call
    query_string = SearchQueryBuilder().search("name", "a").build_query()

    print_query_info(query_string)
    print()

    try:
        result = employee_api.get_employees(page=0, size=5, query=query_string)

        print(f"✅ Found {result.total_elements} employees")
        for emp in result.content:
            print(f"   - {emp.name}")
    except Exception as e:
        print_error(e)


def example_2_search_or(employee_api: EmployeeApi) -> None:
    """Example 2: Multiple search fields with OR logic."""
    print_section("Example 2: Search with OR Logic", "🔎")
    print("Goal: Find employees with 'a' OR 'b' in name")
    print()

    query_string = (SearchQueryBuilder()
        .search("name", "a")
        .search("name", "b")
        .build_query())

    print_query_info(query_string)
    print()

    try:
        result = employee_api.get_employees(page=0, size=10, query=query_string)

        print(f"✅ Found {result.total_elements} employees")
        for emp in result.content:
            print(f"   - {emp.name}")
    except Exception as e:
        print_error(e)


def example_3_filter_and(employee_api: EmployeeApi) -> None:
    """Example 3: Filter with AND logic."""
    print_section("Example 3: Filter with AND Logic", "🎯")
    print("Goal: Find employees with name containing 'a' AND hired after 2024")
    print()

    query_string = (SearchQueryBuilder()
        .search("name", "a")
        .filter("startDate", {"from": "2024-01-01"})
        .build_query())

    print_query_info(query_string)
    print()

    try:
        result = employee_api.get_employees(page=0, size=10, query=query_string)

        print(f"✅ Found {result.total_elements} employees")
        for emp in result.content:
            print(f"   - {emp.name} - Hired: {emp.start_date}")
    except Exception as e:
        print_error(e)


def example_4_date_range_simple(employee_api: EmployeeApi) -> None:
    """Example 4: Simple date range using from/to."""
    print_section("Example 4: Date Range (Simple)", "📅")
    print("Goal: Find employees hired after 2020")
    print("API syntax: startDate>2020-01-01")
    print()

    query_string = SearchQueryBuilder().filter("startDate", {"from": "2020-01-01"}).build_query()

    print_query_info(query_string)
    print()

    try:
        result = employee_api.get_employees(page=0, size=5, query=query_string)

        print(f"✅ Found {result.total_elements} employees hired after 2020")
        for emp in result.content:
            print(f"   - {emp.name} - Hired: {emp.start_date}")
    except Exception as e:
        print_error(e)


def example_5_date_range_between(employee_api: EmployeeApi) -> None:
    """Example 5: Date range with both from and to (between dates)."""
    print_section("Example 5: Date Range (Between)", "📆")
    print("Goal: Find employees hired between 2020 and 2023")
    print("API syntax: startDate>2020-01-01,startDate<2023-12-31")
    print()

    query_string = SearchQueryBuilder().filter("startDate", {"from": "2020-01-01", "to": "2023-12-31"}).build_query()

    print_query_info(query_string)
    print()

    try:
        result = employee_api.get_employees(page=0, size=5, query=query_string)

        print(f"✅ Found {result.total_elements} employees hired between 2020-2023")
        for emp in result.content:
            print(f"   - {emp.name} - Hired: {emp.start_date}")
    except Exception as e:
        print_error(e)


def example_6_combined_query(employee_api: EmployeeApi) -> None:
    """Example 6: Combined search and filter query."""
    print_section("Example 6: Combined Search + Filter", "💼")
    print("Goal: Search for employees with 'a' in name and hired after 2025")
    print()

    search_term = "a"

    query_string = (SearchQueryBuilder()
        .search("name", search_term)
        .filter("startDate", {"from": "2025-01-01"})
        .build_query())

    print_query_info(query_string)
    print()

    try:
        result = employee_api.get_employees(page=0, size=10, query=query_string)

        print(f"✅ Found {result.total_elements} employees")
        print(f"📄 Showing page {result.number + 1} of {result.total_pages} (size: {result.size})")
        for emp in result.content:
            print(f"   - {emp.name} - Hired: {emp.start_date}")
    except Exception as e:
        print_error(e)


def example_7_in_operator(employee_api: EmployeeApi) -> None:
    """Example 7: Using the 'in' operator to filter by multiple values.

    Currently, there is no public API that uses the 'in' operator.
    However, here is an example of how to use the 'in' operator with the Organization API.
    """
    print_section("Example 7: 'in' Operator", "🔢")
    print("Goal: Find employees with specific status values using 'in' operator")
    print("API syntax: statusIn:active;pending;approved (semicolon-separated values)")
    print()

    # Use 'in' operator to filter by multiple status values
    # Note: This is a demonstration - adjust the field name based on your API schema
    query_string = SearchQueryBuilder().filter("status", {"in": ["active", "pending"]}).build_query()

    print_query_info(query_string)
    print()

    try:
        result = employee_api.get_employees(page=0, size=10, query=query_string)

        print(f"✅ Found {result.total_elements} employees matching the status values")
        for emp in result.content:
            print(f"   - {emp.name} - Status: {getattr(emp, 'status', 'N/A')}")
    except Exception as e:
        print_error(e)
        print("\n💡 Note: The 'in' operator works with any field that supports multiple values.")
        print("   Adjust the field name (e.g., 'countryCode', 'departmentId') based on your API schema.")


def main() -> None:
    """Run all examples with real API calls."""
    print("\n" + "=" * 80)
    print("🎓 QUERY BUILDER TUTORIAL - From Simple to Complex")
    print("=" * 80)
    print("\nReference: https://gdplabs.gitbook.io/catapa-rest-api/")

    print("\n" + "=" * 80)
    print("🔐 Initializing CATAPA Client")
    print("=" * 80)

    client = Catapa(
        tenant="zfrl",
        client_id="demo",
        client_secret="demo-secret"
    )
    print("✅ Client initialized successfully with auto-refresh token support!")

    # Create API instances
    employee_api = EmployeeApi(client)

    # Run examples
    example_1_simple_search(employee_api)
    example_2_search_or(employee_api)
    example_3_filter_and(employee_api)
    example_4_date_range_simple(employee_api)
    example_5_date_range_between(employee_api)
    example_6_combined_query(employee_api)
    example_7_in_operator(employee_api)

    print("\n" + "=" * 80)
    print()
    print("🌐 All examples use real CATAPA API endpoints!")
    print("✨ Query parameters work with generated API methods!")
    print()
    print("Key Features:")
    print("  • Uses real Catapa SDK (no custom client)")
    print("  • Generated API methods support query parameter")
    print("  • SearchQueryBuilder integrates seamlessly")
    print("  • Automatic OAuth2 token refresh")
    print()
    print("🎉 Tutorial Complete!")
    print("=" * 80)
    print()


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n⚠️  Interrupted by user")
    except Exception as e:
        print(f"\n\n❌ Unexpected error: {e}")
        import traceback
        traceback.print_exc()
