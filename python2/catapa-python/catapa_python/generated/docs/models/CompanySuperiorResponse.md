# CompanySuperiorResponse

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
| `location`               | [`LocationResponse`](LocationResponse.md)                 |             |

## Usage Examples

### Creating an instance

```python
from catapa import CompanySuperiorResponse

company_superior_response = CompanySuperiorResponse(
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
    location=None,  # [LocationResponse](LocationResponse.md)
)
```

### Working with JSON

```python
from catapa import CompanySuperiorResponse

# Parse from JSON
json_str = '{"id": "example"}'
company_superior_response = CompanySuperiorResponse.from_json(json_str)

# Convert to JSON
print(company_superior_response.to_json())
```

### Working with dictionaries

```python
from catapa import CompanySuperiorResponse

# Convert to/from dictionary
data_dict = company_superior_response.to_dict()
company_superior_response = CompanySuperiorResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(company_superior_response.id)
# Update properties
company_superior_response.id = "new_value"
```
