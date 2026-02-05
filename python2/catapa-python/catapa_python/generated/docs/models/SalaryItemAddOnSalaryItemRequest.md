# SalaryItemAddOnSalaryItemRequest

## Properties

| Name   | Type  | Required | Description |
| :----- | :---- | :------: | :---------- |
| `code` | `str` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryItemAddOnSalaryItemRequest

salary_item_add_on_salary_item_request = SalaryItemAddOnSalaryItemRequest(code="''")
```

### Working with JSON

```python
from catapa import SalaryItemAddOnSalaryItemRequest

# Parse from JSON
json_str = '{"code": "example"}'
salary_item_add_on_salary_item_request = SalaryItemAddOnSalaryItemRequest.from_json(
    json_str
)

# Convert to JSON
print(salary_item_add_on_salary_item_request.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryItemAddOnSalaryItemRequest

# Convert to/from dictionary
data_dict = salary_item_add_on_salary_item_request.to_dict()
salary_item_add_on_salary_item_request = SalaryItemAddOnSalaryItemRequest.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(salary_item_add_on_salary_item_request.code)
# Update properties
salary_item_add_on_salary_item_request.code = "new_value"
```
