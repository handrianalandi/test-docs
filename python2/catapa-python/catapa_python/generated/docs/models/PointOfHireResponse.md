# PointOfHireResponse

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
| `address`        | `str`                                         |             |
| `phone`          | `str`                                         |             |
| `zip_code`       | `str`                                         |             |
| `headquarter`    | `bool`                                        |             |
| `company`        | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import PointOfHireResponse

point_of_hire_response = PointOfHireResponse(
    id="''",
    code="''",
    name="''",
    location_group=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    city=None,  # [CityResponse](CityResponse.md)
    latitude=1.337,
    longitude=1.337,
    address="''",
    phone="''",
    zip_code="''",
    headquarter=True,
    company=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import PointOfHireResponse

# Parse from JSON
json_str = '{"id": "example"}'
point_of_hire_response = PointOfHireResponse.from_json(json_str)

# Convert to JSON
print(point_of_hire_response.to_json())
```

### Working with dictionaries

```python
from catapa import PointOfHireResponse

# Convert to/from dictionary
data_dict = point_of_hire_response.to_dict()
point_of_hire_response = PointOfHireResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(point_of_hire_response.id)
# Update properties
point_of_hire_response.id = "new_value"
```
