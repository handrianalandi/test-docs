# SalaryTemplateDetailResponse

## Properties

| Name          | Type                                          | Description |
| :------------ | :-------------------------------------------- | :---------- |
| `id`          | `UUID`                                        |             |
| `salary_item` | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryTemplateDetailResponse

salary_template_detail_response = SalaryTemplateDetailResponse(
    id="''", salary_item=None  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import SalaryTemplateDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
salary_template_detail_response = SalaryTemplateDetailResponse.from_json(json_str)

# Convert to JSON
print(salary_template_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryTemplateDetailResponse

# Convert to/from dictionary
data_dict = salary_template_detail_response.to_dict()
salary_template_detail_response = SalaryTemplateDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_template_detail_response.id)
# Update properties
salary_template_detail_response.id = "new_value"
```
