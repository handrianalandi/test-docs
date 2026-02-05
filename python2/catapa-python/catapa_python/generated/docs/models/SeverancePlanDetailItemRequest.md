# SeverancePlanDetailItemRequest

## Properties

| Name                | Type    | Required | Description |
| :------------------ | :------ | :------: | :---------- |
| `code`              | `str`   |    ✅    |             |
| `name`              | `str`   |    ✅    |             |
| `category`          | `str`   |    ✅    |             |
| `amount`            | `float` |    ✅    |             |
| `pph21_item_method` | `str`   |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import SeverancePlanDetailItemRequest

severance_plan_detail_item_request = SeverancePlanDetailItemRequest(
    code="''", name="''", category="''", amount=1.337, pph21_item_method="''"
)
```

### Working with JSON

```python
from catapa import SeverancePlanDetailItemRequest

# Parse from JSON
json_str = '{"code": "example"}'
severance_plan_detail_item_request = SeverancePlanDetailItemRequest.from_json(json_str)

# Convert to JSON
print(severance_plan_detail_item_request.to_json())
```

### Working with dictionaries

```python
from catapa import SeverancePlanDetailItemRequest

# Convert to/from dictionary
data_dict = severance_plan_detail_item_request.to_dict()
severance_plan_detail_item_request = SeverancePlanDetailItemRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(severance_plan_detail_item_request.code)
# Update properties
severance_plan_detail_item_request.code = "new_value"
```
