# SeverancePlanResponse

## Properties

| Name             | Type                                        | Description |
| :--------------- | :------------------------------------------ | :---------- |
| `id`             | `UUID`                                      |             |
| `kpp`            | [`KppSimpleResponse`](KppSimpleResponse.md) |             |
| `payment_method` | `str`                                       |             |
| `pph21_method`   | `str`                                       |             |
| `payment_option` | `str`                                       |             |
| `total`          | `float`                                     |             |
| `total_thp`      | `float`                                     |             |
| `total_pph`      | `float`                                     |             |
| `tax_allowance`  | `float`                                     |             |

## Usage Examples

### Creating an instance

```python
from catapa import SeverancePlanResponse

severance_plan_response = SeverancePlanResponse(
    id="''",
    kpp=None,  # [KppSimpleResponse](KppSimpleResponse.md)
    payment_method="''",
    pph21_method="''",
    payment_option="''",
    total=1.337,
    total_thp=1.337,
    total_pph=1.337,
    tax_allowance=1.337,
)
```

### Working with JSON

```python
from catapa import SeverancePlanResponse

# Parse from JSON
json_str = '{"id": "example"}'
severance_plan_response = SeverancePlanResponse.from_json(json_str)

# Convert to JSON
print(severance_plan_response.to_json())
```

### Working with dictionaries

```python
from catapa import SeverancePlanResponse

# Convert to/from dictionary
data_dict = severance_plan_response.to_dict()
severance_plan_response = SeverancePlanResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(severance_plan_response.id)
# Update properties
severance_plan_response.id = "new_value"
```
