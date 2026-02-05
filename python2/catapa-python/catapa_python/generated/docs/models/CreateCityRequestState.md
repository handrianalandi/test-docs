# CreateCityRequestState

## Properties

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import CreateCityRequestState

create_city_request_state = CreateCityRequestState(id="''")
```

### Working with JSON

```python
from catapa import CreateCityRequestState

# Parse from JSON
json_str = '{"id": "example"}'
create_city_request_state = CreateCityRequestState.from_json(json_str)

# Convert to JSON
print(create_city_request_state.to_json())
```

### Working with dictionaries

```python
from catapa import CreateCityRequestState

# Convert to/from dictionary
data_dict = create_city_request_state.to_dict()
create_city_request_state = CreateCityRequestState.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(create_city_request_state.id)
# Update properties
create_city_request_state.id = "new_value"
```
