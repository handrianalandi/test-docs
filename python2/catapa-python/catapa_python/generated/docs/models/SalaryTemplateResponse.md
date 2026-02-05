# SalaryTemplateResponse

## Properties

| Name                      | Type                                                                    | Description |
| :------------------------ | :---------------------------------------------------------------------- | :---------- |
| `id`                      | `UUID`                                                                  |             |
| `code`                    | `str`                                                                   |             |
| `name`                    | `str`                                                                   |             |
| `salary_template_details` | [`List[SalaryTemplateDetailResponse]`](SalaryTemplateDetailResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryTemplateResponse

salary_template_response = SalaryTemplateResponse(
    id="''",
    code="''",
    name="''",
    salary_template_details=[],  # List[[SalaryTemplateDetailResponse](SalaryTemplateDetailResponse.md)]
)
```

### Working with JSON

```python
from catapa import SalaryTemplateResponse

# Parse from JSON
json_str = '{"id": "example"}'
salary_template_response = SalaryTemplateResponse.from_json(json_str)

# Convert to JSON
print(salary_template_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryTemplateResponse

# Convert to/from dictionary
data_dict = salary_template_response.to_dict()
salary_template_response = SalaryTemplateResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_template_response.id)
# Update properties
salary_template_response.id = "new_value"
```
