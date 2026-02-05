# LocationResponse

## Properties

| Name             | Type                                          | Description |
| :--------------- | :-------------------------------------------- | :---------- |
| `id`             | `str`                                         |             |
| `code`           | `str`                                         |             |
| `name`           | `str`                                         |             |
| `location_group` | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |
| `city`           | [`CityResponse`](CityResponse.md)             |             |
| `latitude`       | `float`                                       |             |
| `longitude`      | `float`                                       |             |
| `headquarter`    | `bool`                                        |             |
| `address`        | `str`                                         |             |
| `phone`          | `str`                                         |             |
| `zip_code`       | `str`                                         |             |
| `company`        | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import LocationResponse

location_response = LocationResponse(
    id="''",
    code="''",
    name="''",
    location_group=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    city=None,  # [CityResponse](CityResponse.md)
    latitude=1.337,
    longitude=1.337,
    headquarter=True,
    address="''",
    phone="''",
    zip_code="''",
    company=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import LocationResponse

# Parse from JSON
json_str = '{"id": "example"}'
location_response = LocationResponse.from_json(json_str)

# Convert to JSON
print(location_response.to_json())
```

### Working with dictionaries

```python
from catapa import LocationResponse

# Convert to/from dictionary
data_dict = location_response.to_dict()
location_response = LocationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(location_response.id)
# Update properties
location_response.id = "new_value"
```
