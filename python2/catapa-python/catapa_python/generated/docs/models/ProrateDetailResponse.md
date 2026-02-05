# ProrateDetailResponse

## Properties

| Name                     | Type                                                                                        | Description |
| :----------------------- | :------------------------------------------------------------------------------------------ | :---------- |
| `amount`                 | `float`                                                                                     |             |
| `effective_date`         | `str`                                                                                       |             |
| `formula`                | `str`                                                                                       |             |
| `prorated_amount`        | `float`                                                                                     |             |
| `salary_decree_number`   | `str`                                                                                       |             |
| `salary_template_detail` | [`ProrateDetailSalaryTemplateDetailResponse`](ProrateDetailSalaryTemplateDetailResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import ProrateDetailResponse

prorate_detail_response = ProrateDetailResponse(
    amount=1.337,
    effective_date="''",
    formula="''",
    prorated_amount=1.337,
    salary_decree_number="''",
    salary_template_detail=None,  # [ProrateDetailSalaryTemplateDetailResponse](ProrateDetailSalaryTemplateDetailResponse.md)
)
```

### Working with JSON

```python
from catapa import ProrateDetailResponse

# Parse from JSON
json_str = '{"amount": "example"}'
prorate_detail_response = ProrateDetailResponse.from_json(json_str)

# Convert to JSON
print(prorate_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import ProrateDetailResponse

# Convert to/from dictionary
data_dict = prorate_detail_response.to_dict()
prorate_detail_response = ProrateDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(prorate_detail_response.amount)
# Update properties
prorate_detail_response.amount = new_value
```
