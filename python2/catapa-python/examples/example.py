"""Quick Start Example - CATAPA Python SDK.

The fastest way to get started with the CATAPA Python SDK.
Features automatic OAuth2 authentication with token auto-refresh on every API call.

Authors:
    Handrian Alandi (handrian.alandi@gdplabs.id)

References:
    NONE
"""

from catapa import Catapa, EmployeeApi, MasterDataApi, SearchQueryBuilder


def main() -> None:
    """Main function to run the example."""
    print("⚡ CATAPA Python SDK - Quick Start\n")

    # Step 1: Initialize with your credentials
    client = Catapa(
        tenant="zfrl",
        client_id="demo",
        client_secret="demo-secret"
    )
    print("✓ Client initialized with auto-refresh token support\n")

    # Step 2: Create API instances
    employee_api = EmployeeApi(client)
    master_data_api = MasterDataApi(client)

    # Step 3: Make API calls
    employees = employee_api.get_employees(page=0, size=5)
    print(f"📋 Employees: {len(employees.content)} found, first 3:")
    for emp in employees.content[:3]:
        print(f"   • {emp.name}")

    countries = master_data_api.get_countries()
    print(f"\n🌍 Countries: {len(countries.content)} found")

    # Step 4: Search with Query Builder
    print("\n🔍 Search employees with name containing 'a':")
    query_string = SearchQueryBuilder().search("name", "a").build_query()
    search_results = employee_api.get_employees(page=0, size=5, query=query_string)
    print(f"   Query: {query_string}")
    print(f"   Found: {search_results.total_elements} employees, showing first 3:")
    for emp in search_results.content[:3]:
        print(f"   • {emp.name}")

    print("\n✨ That's all! All APIs work the same way.")
    print("\n💡 Key Features:")
    print("  • Automatic token refresh on every API call")
    print("  • Create API instances once, use them throughout your application")
    print("  • Perfect for long-running services and daemons")
    print("  • No manual token management needed")
    print("  • SearchQueryBuilder for advanced filtering")
    print("\n📚 Available APIs:")
    print("  • EmployeeApi, OrganizationApi, MasterDataApi")
    print("  • TaxApi, SalaryPaymentApi, PayrollProcessSnapshotApi")
    print("  • ... and 40+ more!")
    print("\n📖 More Examples:")
    print("  • See examples/query_builder_example.py for advanced query patterns")


if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        print("\n❌ Note: This example will fail with connection error if not running against real API")
        print(f"   Error: {e}")
