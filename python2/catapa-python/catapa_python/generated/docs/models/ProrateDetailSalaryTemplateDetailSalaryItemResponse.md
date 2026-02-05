# ProrateDetailSalaryTemplateDetailSalaryItemResponse

## Properties

| Name               | Type  | Description |
| :----------------- | :---- | :---------- |
| `id`               | `str` |             |
| `code`             | `str` |             |
| `name`             | `str` |             |
| `salary_item_type` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import ProrateDetailSalaryTemplateDetailSalaryItemResponse

prorate_detail_salary_template_detail_salary_item_response = (
    ProrateDetailSalaryTemplateDetailSalaryItemResponse(
        id="''", code="''", name="''", salary_item_type="''"
    )
)
```

### Working with JSON

```python
from catapa import ProrateDetailSalaryTemplateDetailSalaryItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
prorate_detail_salary_template_detail_salary_item_response = (
    ProrateDetailSalaryTemplateDetailSalaryItemResponse.from_json(json_str)
)

# Convert to JSON
print(prorate_detail_salary_template_detail_salary_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import ProrateDetailSalaryTemplateDetailSalaryItemResponse

# Convert to/from dictionary
data_dict = prorate_detail_salary_template_detail_salary_item_response.to_dict()
prorate_detail_salary_template_detail_salary_item_response = (
    ProrateDetailSalaryTemplateDetailSalaryItemResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(prorate_detail_salary_template_detail_salary_item_response.id)
# Update properties
prorate_detail_salary_template_detail_salary_item_response.id = "new_value"
```
