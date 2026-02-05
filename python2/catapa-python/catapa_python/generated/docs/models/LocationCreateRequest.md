# LocationCreateRequest

## Properties

| Name             | Type                        | Required | Description                                                                |
| :--------------- | :-------------------------- | :------: | :------------------------------------------------------------------------- |
| `code`           | `str`                       |    ✅    |                                                                            |
| `name`           | `str`                       |    ✅    |                                                                            |
| `location_group` | [`IdRequest`](IdRequest.md) |    ❌    |                                                                            |
| `city`           | [`IdRequest`](.md)          |    ✅    |                                                                            |
| `latitude`       | `float`                     |    ❌    |                                                                            |
| `longitude`      | `float`                     |    ❌    |                                                                            |
| `address`        | `str`                       |    ❌    |                                                                            |
| `phone`          | `str`                       |    ❌    | e.g. \`+6281234567890\`                                                    |
| `zip_code`       | `str`                       |    ❌    | Numeric                                                                    |
| `headquarter`    | `bool`                      |    ✅    | If value is true, will automatically update headquarter in company profile |

## Usage Examples

### Creating an instance

```python
from catapa import LocationCreateRequest

location_create_request = LocationCreateRequest(
    code="'0'",
    name="'0'",
    location_group=None,  # [IdRequest](IdRequest.md)
    city=None,  # [](.md)
    latitude=1.337,
    longitude=1.337,
    address="''",
    phone="'+08988'",
    zip_code="''",
    headquarter=True,
)
```

### Working with JSON

```python
from catapa import LocationCreateRequest

# Parse from JSON
json_str = '{"code": "example"}'
location_create_request = LocationCreateRequest.from_json(json_str)

# Convert to JSON
print(location_create_request.to_json())
```

### Working with dictionaries

```python
from catapa import LocationCreateRequest

# Convert to/from dictionary
data_dict = location_create_request.to_dict()
location_create_request = LocationCreateRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(location_create_request.code)
# Update properties
location_create_request.code = "new_value"
```
