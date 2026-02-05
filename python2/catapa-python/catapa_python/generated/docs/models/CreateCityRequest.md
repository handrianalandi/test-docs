# CreateCityRequest

## Properties

| Name    | Type                                                  | Required | Description |
| :------ | :---------------------------------------------------- | :------: | :---------- |
| `code`  | `str`                                                 |    ✅    |             |
| `name`  | `str`                                                 |    ✅    |             |
| `state` | [`CreateCityRequestState`](CreateCityRequestState.md) |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import CreateCityRequest

create_city_request = CreateCityRequest(
    code="'0'",
    name="'0'",
    state=None,  # [CreateCityRequestState](CreateCityRequestState.md)
)
```

### Working with JSON

```python
from catapa import CreateCityRequest

# Parse from JSON
json_str = '{"code": "example"}'
create_city_request = CreateCityRequest.from_json(json_str)

# Convert to JSON
print(create_city_request.to_json())
```

### Working with dictionaries

```python
from catapa import CreateCityRequest

# Convert to/from dictionary
data_dict = create_city_request.to_dict()
create_city_request = CreateCityRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(create_city_request.code)
# Update properties
create_city_request.code = "new_value"
```
