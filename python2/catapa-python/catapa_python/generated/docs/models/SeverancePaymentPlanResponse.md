# SeverancePaymentPlanResponse

## Properties

| Name                             | Type    | Description |
| :------------------------------- | :------ | :---------- |
| `id`                             | `UUID`  |             |
| `termination_entry_id`           | `UUID`  |             |
| `termination_entry_code`         | `str`   |             |
| `employee_id`                    | `UUID`  |             |
| `employee_identification_number` | `str`   |             |
| `employee_name`                  | `str`   |             |
| `termination_reason_id`          | `UUID`  |             |
| `termination_reason_name`        | `str`   |             |
| `termination_date`               | `date`  |             |
| `planned_date`                   | `date`  |             |
| `payment_date`                   | `date`  |             |
| `payment_method`                 | `str`   |             |
| `payment_option`                 | `str`   |             |
| `amount`                         | `float` |             |
| `non_taxable_amount`             | `float` |             |
| `thp_amount`                     | `float` |             |
| `pph_amount`                     | `float` |             |
| `tax_allowance`                  | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import SeverancePaymentPlanResponse

severance_payment_plan_response = SeverancePaymentPlanResponse(
    id="''",
    termination_entry_id="''",
    termination_entry_code="''",
    employee_id="''",
    employee_identification_number="''",
    employee_name="''",
    termination_reason_id="''",
    termination_reason_name="''",
    termination_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    planned_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    payment_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    payment_method="''",
    payment_option="''",
    amount=1.337,
    non_taxable_amount=1.337,
    thp_amount=1.337,
    pph_amount=1.337,
    tax_allowance=1.337,
)
```

### Working with JSON

```python
from catapa import SeverancePaymentPlanResponse

# Parse from JSON
json_str = '{"id": "example"}'
severance_payment_plan_response = SeverancePaymentPlanResponse.from_json(json_str)

# Convert to JSON
print(severance_payment_plan_response.to_json())
```

### Working with dictionaries

```python
from catapa import SeverancePaymentPlanResponse

# Convert to/from dictionary
data_dict = severance_payment_plan_response.to_dict()
severance_payment_plan_response = SeverancePaymentPlanResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(severance_payment_plan_response.id)
# Update properties
severance_payment_plan_response.id = "new_value"
```
