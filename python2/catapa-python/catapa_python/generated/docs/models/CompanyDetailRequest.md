# CompanyDetailRequest

The Content-Type must be `application/json`

## Properties

| Name               | Type                                                              | Required | Description                                                |
| :----------------- | :---------------------------------------------------------------- | :------: | :--------------------------------------------------------- |
| `name`             | `str`                                                             |    ✅    |                                                            |
| `code`             | `str`                                                             |    ❌    |                                                            |
| `website`          | `str`                                                             |    ❌    |                                                            |
| `siup`             | `str`                                                             |    ❌    | Alphanumeric, hyphen (-), slash (/), period (.), and space |
| `tdp`              | `str`                                                             |    ❌    | Alphanumeric, hyphen (-), slash (/), period (.), and space |
| `time_zone`        | [`CompanyDetailTimeZoneRequest`](CompanyDetailTimeZoneRequest.md) |    ✅    |                                                            |
| `email`            | `str`                                                             |    ✅    |                                                            |
| `company_superior` | [`IdRequest`](IdRequest.md)                                       |    ❌    |                                                            |
| `location`         | [`IdRequest`](IdRequest.md)                                       |    ✅    |                                                            |

## Usage Examples

### Creating an instance

```python
from catapa import CompanyDetailRequest

company_detail_request = CompanyDetailRequest(
    name="'0'",
    code="'0'",
    website="'012'",
    siup="'.0'",
    tdp="'.0'",
    time_zone=None,  # [CompanyDetailTimeZoneRequest](CompanyDetailTimeZoneRequest.md)
    email="''",
    company_superior=None,  # [IdRequest](IdRequest.md)
    location=None,  # [IdRequest](IdRequest.md)
)
```

### Working with JSON

```python
from catapa import CompanyDetailRequest

# Parse from JSON
json_str = '{"name": "example"}'
company_detail_request = CompanyDetailRequest.from_json(json_str)

# Convert to JSON
print(company_detail_request.to_json())
```

### Working with dictionaries

```python
from catapa import CompanyDetailRequest

# Convert to/from dictionary
data_dict = company_detail_request.to_dict()
company_detail_request = CompanyDetailRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(company_detail_request.name)
# Update properties
company_detail_request.name = "new_value"
```
