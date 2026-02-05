# CostCenterListItemResponse

## Properties

| Name          | Type                                          | Description |
| :------------ | :-------------------------------------------- | :---------- |
| `id`          | `str`                                         |             |
| `code`        | `str`                                         |             |
| `name`        | `str`                                         |             |
| `description` | `str`                                         |             |
| `company`     | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import CostCenterListItemResponse

cost_center_list_item_response = CostCenterListItemResponse(
    id="''",
    code="''",
    name="''",
    description="''",
    company=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import CostCenterListItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
cost_center_list_item_response = CostCenterListItemResponse.from_json(json_str)

# Convert to JSON
print(cost_center_list_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import CostCenterListItemResponse

# Convert to/from dictionary
data_dict = cost_center_list_item_response.to_dict()
cost_center_list_item_response = CostCenterListItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(cost_center_list_item_response.id)
# Update properties
cost_center_list_item_response.id = "new_value"
```
