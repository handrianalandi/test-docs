# CostCenterResponse

## Properties

| Name          | Type  | Description |
| :------------ | :---- | :---------- |
| `id`          | `str` |             |
| `code`        | `str` |             |
| `name`        | `str` |             |
| `description` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import CostCenterResponse

cost_center_response = CostCenterResponse(
    id="''", code="''", name="''", description="''"
)
```

### Working with JSON

```python
from catapa import CostCenterResponse

# Parse from JSON
json_str = '{"id": "example"}'
cost_center_response = CostCenterResponse.from_json(json_str)

# Convert to JSON
print(cost_center_response.to_json())
```

### Working with dictionaries

```python
from catapa import CostCenterResponse

# Convert to/from dictionary
data_dict = cost_center_response.to_dict()
cost_center_response = CostCenterResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(cost_center_response.id)
# Update properties
cost_center_response.id = "new_value"
```
