# SeverancePlanPaymentPlanItemRequest

## Properties

| Name           | Type    | Required | Description |
| :------------- | :------ | :------: | :---------- |
| `planned_date` | `str`   |    ✅    |             |
| `payment_date` | `str`   |    ✅    |             |
| `amount`       | `float` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import SeverancePlanPaymentPlanItemRequest

severance_plan_payment_plan_item_request = SeverancePlanPaymentPlanItemRequest(
    planned_date="''", payment_date="''", amount=1.337
)
```

### Working with JSON

```python
from catapa import SeverancePlanPaymentPlanItemRequest

# Parse from JSON
json_str = '{"planned_date": "example"}'
severance_plan_payment_plan_item_request = (
    SeverancePlanPaymentPlanItemRequest.from_json(json_str)
)

# Convert to JSON
print(severance_plan_payment_plan_item_request.to_json())
```

### Working with dictionaries

```python
from catapa import SeverancePlanPaymentPlanItemRequest

# Convert to/from dictionary
data_dict = severance_plan_payment_plan_item_request.to_dict()
severance_plan_payment_plan_item_request = (
    SeverancePlanPaymentPlanItemRequest.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(severance_plan_payment_plan_item_request.planned_date)
# Update properties
severance_plan_payment_plan_item_request.planned_date = "new_value"
```
