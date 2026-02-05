# CityResponse

## Properties

| Name    | Type                                | Description |
| :------ | :---------------------------------- | :---------- |
| `id`    | `str`                               |             |
| `code`  | `str`                               |             |
| `name`  | `str`                               |             |
| `state` | [`StateResponse`](StateResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import CityResponse

city_response = CityResponse(
    id="''", code="''", name="''", state=None  # [StateResponse](StateResponse.md)
)
```

### Working with JSON

```python
from catapa import CityResponse

# Parse from JSON
json_str = '{"id": "example"}'
city_response = CityResponse.from_json(json_str)

# Convert to JSON
print(city_response.to_json())
```

### Working with dictionaries

```python
from catapa import CityResponse

# Convert to/from dictionary
data_dict = city_response.to_dict()
city_response = CityResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(city_response.id)
# Update properties
city_response.id = "new_value"
```
