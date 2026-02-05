# CostCenterSimpleResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `code` | `str` |             |
| `name` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import CostCenterSimpleResponse

cost_center_simple_response = CostCenterSimpleResponse(code="''", name="''")
```

### Working with JSON

```python
from catapa import CostCenterSimpleResponse

# Parse from JSON
json_str = '{"code": "example"}'
cost_center_simple_response = CostCenterSimpleResponse.from_json(json_str)

# Convert to JSON
print(cost_center_simple_response.to_json())
```

### Working with dictionaries

```python
from catapa import CostCenterSimpleResponse

# Convert to/from dictionary
data_dict = cost_center_simple_response.to_dict()
cost_center_simple_response = CostCenterSimpleResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(cost_center_simple_response.code)
# Update properties
cost_center_simple_response.code = "new_value"
```
