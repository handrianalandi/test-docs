# CostCenterRequest

## Properties

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `code`        | `str` |    ✅    |             |
| `name`        | `str` |    ✅    |             |
| `description` | `str` |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import CostCenterRequest

cost_center_request = CostCenterRequest(code="'0'", name="'0'", description="''")
```

### Working with JSON

```python
from catapa import CostCenterRequest

# Parse from JSON
json_str = '{"code": "example"}'
cost_center_request = CostCenterRequest.from_json(json_str)

# Convert to JSON
print(cost_center_request.to_json())
```

### Working with dictionaries

```python
from catapa import CostCenterRequest

# Convert to/from dictionary
data_dict = cost_center_request.to_dict()
cost_center_request = CostCenterRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(cost_center_request.code)
# Update properties
cost_center_request.code = "new_value"
```
