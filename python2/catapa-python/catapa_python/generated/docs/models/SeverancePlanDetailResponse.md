# SeverancePlanDetailResponse

## Properties

| Name                | Type    | Description |
| :------------------ | :------ | :---------- |
| `code`              | `str`   |             |
| `name`              | `str`   |             |
| `category`          | `str`   |             |
| `amount`            | `float` |             |
| `pph21_item_method` | `str`   |             |

## Usage Examples

### Creating an instance

```python
from catapa import SeverancePlanDetailResponse

severance_plan_detail_response = SeverancePlanDetailResponse(
    code="''", name="''", category="''", amount=1.337, pph21_item_method="''"
)
```

### Working with JSON

```python
from catapa import SeverancePlanDetailResponse

# Parse from JSON
json_str = '{"code": "example"}'
severance_plan_detail_response = SeverancePlanDetailResponse.from_json(json_str)

# Convert to JSON
print(severance_plan_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import SeverancePlanDetailResponse

# Convert to/from dictionary
data_dict = severance_plan_detail_response.to_dict()
severance_plan_detail_response = SeverancePlanDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(severance_plan_detail_response.code)
# Update properties
severance_plan_detail_response.code = "new_value"
```
