# SeverancePlanResponseWithDetail

## Properties

| Name             | Type                                                                    | Required | Description |
| :--------------- | :---------------------------------------------------------------------- | :------: | :---------- |
| `id`             | `UUID`                                                                  |    ❌    |             |
| `kpp`            | [`KppSimpleResponse`](KppSimpleResponse.md)                             |    ❌    |             |
| `payment_method` | `str`                                                                   |    ❌    |             |
| `pph21_method`   | `str`                                                                   |    ❌    |             |
| `payment_option` | `str`                                                                   |    ❌    |             |
| `total`          | `float`                                                                 |    ❌    |             |
| `total_thp`      | `float`                                                                 |    ❌    |             |
| `total_pph`      | `float`                                                                 |    ❌    |             |
| `tax_allowance`  | `float`                                                                 |    ❌    |             |
| `details`        | [`List[SeverancePlanDetailResponse]`](SeverancePlanDetailResponse.md)   |    ❌    |             |
| `payment_plans`  | [`List[SeverancePaymentPlanResponse]`](SeverancePaymentPlanResponse.md) |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import SeverancePlanResponseWithDetail

severance_plan_response_with_detail = SeverancePlanResponseWithDetail(
    id="''",
    kpp=None,  # [KppSimpleResponse](KppSimpleResponse.md)
    payment_method="''",
    pph21_method="''",
    payment_option="''",
    total=1.337,
    total_thp=1.337,
    total_pph=1.337,
    tax_allowance=1.337,
    details=[],  # List[[SeverancePlanDetailResponse](SeverancePlanDetailResponse.md)]
    payment_plans=[],  # List[[SeverancePaymentPlanResponse](SeverancePaymentPlanResponse.md)]
)
```

### Working with JSON

```python
from catapa import SeverancePlanResponseWithDetail

# Parse from JSON
json_str = '{"id": "example"}'
severance_plan_response_with_detail = SeverancePlanResponseWithDetail.from_json(
    json_str
)

# Convert to JSON
print(severance_plan_response_with_detail.to_json())
```

### Working with dictionaries

```python
from catapa import SeverancePlanResponseWithDetail

# Convert to/from dictionary
data_dict = severance_plan_response_with_detail.to_dict()
severance_plan_response_with_detail = SeverancePlanResponseWithDetail.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(severance_plan_response_with_detail.id)
# Update properties
severance_plan_response_with_detail.id = "new_value"
```
