# CompanyDetailResponse

## Properties

| Name                     | Type                                                      | Description |
| :----------------------- | :-------------------------------------------------------- | :---------- |
| `id`                     | `str`                                                     |             |
| `name`                   | `str`                                                     |             |
| `code`                   | `str`                                                     |             |
| `website`                | `str`                                                     |             |
| `siup`                   | `str`                                                     |             |
| `tdp`                    | `str`                                                     |             |
| `logo`                   | `str`                                                     |             |
| `logo_original_filename` | `str`                                                     |             |
| `logo_file_metadata`     | [`LogoFileMetadataResponse`](LogoFileMetadataResponse.md) |             |
| `time_zone`              | [`TimeZoneResponse`](TimeZoneResponse.md)                 |             |
| `email`                  | `str`                                                     |             |
| `company_superior`       | [`CompanySuperiorResponse`](CompanySuperiorResponse.md)   |             |
| `location`               | [`LocationResponse`](LocationResponse.md)                 |             |
| `company_group`          | [`IdCodeNameResponse`](IdCodeNameResponse.md)             |             |

## Usage Examples

### Creating an instance

```python
from catapa import CompanyDetailResponse

company_detail_response = CompanyDetailResponse(
    id="''",
    name="''",
    code="''",
    website="''",
    siup="''",
    tdp="''",
    logo="''",
    logo_original_filename="''",
    logo_file_metadata=None,  # [LogoFileMetadataResponse](LogoFileMetadataResponse.md)
    time_zone=None,  # [TimeZoneResponse](TimeZoneResponse.md)
    email="''",
    company_superior=None,  # [CompanySuperiorResponse](CompanySuperiorResponse.md)
    location=None,  # [LocationResponse](LocationResponse.md)
    company_group=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import CompanyDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
company_detail_response = CompanyDetailResponse.from_json(json_str)

# Convert to JSON
print(company_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import CompanyDetailResponse

# Convert to/from dictionary
data_dict = company_detail_response.to_dict()
company_detail_response = CompanyDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(company_detail_response.id)
# Update properties
company_detail_response.id = "new_value"
```
