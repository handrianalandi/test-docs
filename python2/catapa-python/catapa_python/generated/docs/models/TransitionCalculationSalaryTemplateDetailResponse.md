# TransitionCalculationSalaryTemplateDetailResponse

## Properties

| Name               | Type                                                                  | Description |
| :----------------- | :-------------------------------------------------------------------- | :---------- |
| `id`               | `str`                                                                 |             |
| `salary_item`      | [`SalaryItemResponseWithCategory`](SalaryItemResponseWithCategory.md) |             |
| `salary_item_type` | `str`                                                                 |             |
| `thp`              | `bool`                                                                |             |

## Usage Examples

### Creating an instance

```python
from catapa import TransitionCalculationSalaryTemplateDetailResponse

transition_calculation_salary_template_detail_response = TransitionCalculationSalaryTemplateDetailResponse(
    id="''",
    salary_item=None,  # [SalaryItemResponseWithCategory](SalaryItemResponseWithCategory.md)
    salary_item_type="''",
    thp=True,
)
```

### Working with JSON

```python
from catapa import TransitionCalculationSalaryTemplateDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
transition_calculation_salary_template_detail_response = (
    TransitionCalculationSalaryTemplateDetailResponse.from_json(json_str)
)

# Convert to JSON
print(transition_calculation_salary_template_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import TransitionCalculationSalaryTemplateDetailResponse

# Convert to/from dictionary
data_dict = transition_calculation_salary_template_detail_response.to_dict()
transition_calculation_salary_template_detail_response = (
    TransitionCalculationSalaryTemplateDetailResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(transition_calculation_salary_template_detail_response.id)
# Update properties
transition_calculation_salary_template_detail_response.id = "new_value"
```
