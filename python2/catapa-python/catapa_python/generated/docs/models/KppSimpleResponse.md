# KppSimpleResponse

## Properties

| Name                    | Type  | Description |
| :---------------------- | :---- | :---------- |
| `id`                    | `str` |             |
| `identification_number` | `str` |             |
| `name`                  | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import KppSimpleResponse

kpp_simple_response = KppSimpleResponse(id="''", identification_number="''", name="''")
```

### Working with JSON

```python
from catapa import KppSimpleResponse

# Parse from JSON
json_str = '{"id": "example"}'
kpp_simple_response = KppSimpleResponse.from_json(json_str)

# Convert to JSON
print(kpp_simple_response.to_json())
```

### Working with dictionaries

```python
from catapa import KppSimpleResponse

# Convert to/from dictionary
data_dict = kpp_simple_response.to_dict()
kpp_simple_response = KppSimpleResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(kpp_simple_response.id)
# Update properties
kpp_simple_response.id = "new_value"
```
