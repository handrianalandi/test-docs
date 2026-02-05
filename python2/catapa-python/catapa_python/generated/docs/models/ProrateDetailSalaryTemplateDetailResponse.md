# ProrateDetailSalaryTemplateDetailResponse

## Properties

| Name               | Type                                                                                                            | Description |
| :----------------- | :-------------------------------------------------------------------------------------------------------------- | :---------- |
| `id`               | `str`                                                                                                           |             |
| `salary_item`      | [`ProrateDetailSalaryTemplateDetailSalaryItemResponse`](ProrateDetailSalaryTemplateDetailSalaryItemResponse.md) |             |
| `salary_item_type` | `str`                                                                                                           |             |

## Usage Examples

### Creating an instance

```python
from catapa import ProrateDetailSalaryTemplateDetailResponse

prorate_detail_salary_template_detail_response = ProrateDetailSalaryTemplateDetailResponse(
    id="''",
    salary_item=None,  # [ProrateDetailSalaryTemplateDetailSalaryItemResponse](ProrateDetailSalaryTemplateDetailSalaryItemResponse.md)
    salary_item_type="''",
)
```

### Working with JSON

```python
from catapa import ProrateDetailSalaryTemplateDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
prorate_detail_salary_template_detail_response = (
    ProrateDetailSalaryTemplateDetailResponse.from_json(json_str)
)

# Convert to JSON
print(prorate_detail_salary_template_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import ProrateDetailSalaryTemplateDetailResponse

# Convert to/from dictionary
data_dict = prorate_detail_salary_template_detail_response.to_dict()
prorate_detail_salary_template_detail_response = (
    ProrateDetailSalaryTemplateDetailResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(prorate_detail_salary_template_detail_response.id)
# Update properties
prorate_detail_salary_template_detail_response.id = "new_value"
```
