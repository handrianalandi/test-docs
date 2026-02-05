# SeverancePlanRequest

## Properties

| Name            | Type                                                                                  | Required | Description |
| :-------------- | :------------------------------------------------------------------------------------ | :------: | :---------- |
| `pph21_method`  | `str`                                                                                 |    ✅    |             |
| `details`       | [`List[SeverancePlanDetailItemRequest]`](SeverancePlanDetailItemRequest.md)           |    ✅    |             |
| `payment_plans` | [`List[SeverancePlanPaymentPlanItemRequest]`](SeverancePlanPaymentPlanItemRequest.md) |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import SeverancePlanRequest

severance_plan_request = SeverancePlanRequest(
    pph21_method="''",
    details=[],  # List[[SeverancePlanDetailItemRequest](SeverancePlanDetailItemRequest.md)]
    payment_plans=[],  # List[[SeverancePlanPaymentPlanItemRequest](SeverancePlanPaymentPlanItemRequest.md)]
)
```

### Working with JSON

```python
from catapa import SeverancePlanRequest

# Parse from JSON
json_str = '{"pph21_method": "example"}'
severance_plan_request = SeverancePlanRequest.from_json(json_str)

# Convert to JSON
print(severance_plan_request.to_json())
```

### Working with dictionaries

```python
from catapa import SeverancePlanRequest

# Convert to/from dictionary
data_dict = severance_plan_request.to_dict()
severance_plan_request = SeverancePlanRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(severance_plan_request.pph21_method)
# Update properties
severance_plan_request.pph21_method = "new_value"
```
