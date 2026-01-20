# CATAPA Python SDK - Examples

This directory contains usage examples for the CATAPA Python SDK wrapper.

## Examples

### 1. `example.py` ⚡ **START HERE**

The fastest way to get started! Shows the simplest usage:

- Initialize client with credentials
- Direct import of API classes
- Create API instances with `client`
- Automatic token validation and refresh

**Run:**

```bash
python example.py
```

## Configuration

Before running the examples, update the credentials in each file:

```python
client = Catapa(
    tenant="your_tenant_name",
    client_id="your_client_id",
    client_secret="your_client_secret"
)
```

## How to Access APIs

### Direct Import Pattern

Import API classes directly from `catapa` and use with `client`:

```python
from catapa import Catapa, EmployeeApi, MasterDataApi, OrganizationApi, TaxApi

# Initialize client
client = Catapa(
    tenant="your-tenant",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Create API instances - tokens are automatically refreshed on every API call
employee_api = EmployeeApi(client)
employees = employee_api.list_all_employees(page=0, size=10)

organization_api = OrganizationApi(client)
company = organization_api.get_company()

tax_api = TaxApi(client)
tax_data = tax_api.get_calculations()
```

### Alternative: Import from openapi_client

You can also import directly from the generated `openapi_client` package:

```python
from catapa import Catapa, EmployeeApi, OrganizationApi

client = Catapa(
    tenant="your-tenant",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

employee_api = EmployeeApi(client)
org_api = OrganizationApi(client)
```

**All patterns include automatic token validation and refresh!** The direct import from `catapa` is recommended for simplicity.

## Error Handling

```python
from catapa import Catapa, EmployeeApi, ApiException

client = Catapa(
    tenant="your-tenant",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

try:
    employee_api = EmployeeApi(client)
    employee = employee_api.get_employee(employee_id="123")
except ApiException as e:
    print(f"API Error: {e.status} - {e.reason}")
except Exception as e:
    print(f"Error: {e}")
```

## Available APIs

All APIs are available through direct import. Here are some commonly used ones:

- `EmployeeApi` - Employee management
- `OrganizationApi` - Organization structure
- `MasterDataApi` - Master data operations
- `TaxApi` - Tax calculations
- `UserApi` - User management
- `AnalyticsApi` - Analytics
- `SalaryPaymentApi` - Salary payments
- `PayrollProcessSnapshotApi` - Payroll processing
- `BpjsHealthcareApi` - BPJS Healthcare
- `BpjsManpowerApi` - BPJS Manpower
- ... and 40+ more!

Import any API class from `catapa` and use it with `client`:

```python
from catapa import Catapa, AnyApiClass

client = Catapa(...)
api = AnyApiClass(client)
```
