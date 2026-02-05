# SalaryItemWithSalaryItemTypeResponse

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
from catapa import SalaryItemWithSalaryItemTypeResponse

salary_item_with_salary_item_type_response = SalaryItemWithSalaryItemTypeResponse(
    id="''", code="''", name="''", salary_item_type="''"
)
```

### Working with JSON

```python
from catapa import SalaryItemWithSalaryItemTypeResponse

# Parse from JSON
json_str = '{"id": "example"}'
salary_item_with_salary_item_type_response = (
    SalaryItemWithSalaryItemTypeResponse.from_json(json_str)
)

# Convert to JSON
print(salary_item_with_salary_item_type_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryItemWithSalaryItemTypeResponse

# Convert to/from dictionary
data_dict = salary_item_with_salary_item_type_response.to_dict()
salary_item_with_salary_item_type_response = (
    SalaryItemWithSalaryItemTypeResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(salary_item_with_salary_item_type_response.id)
# Update properties
salary_item_with_salary_item_type_response.id = "new_value"
```
