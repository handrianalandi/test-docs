# SalaryItemAddOnEmployeeResponse

## Properties

| Name                    | Type  | Description |
| :---------------------- | :---- | :---------- |
| `identification_number` | `str` |             |
| `name`                  | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryItemAddOnEmployeeResponse

salary_item_add_on_employee_response = SalaryItemAddOnEmployeeResponse(
    identification_number="''", name="''"
)
```

### Working with JSON

```python
from catapa import SalaryItemAddOnEmployeeResponse

# Parse from JSON
json_str = '{"identification_number": "example"}'
salary_item_add_on_employee_response = SalaryItemAddOnEmployeeResponse.from_json(
    json_str
)

# Convert to JSON
print(salary_item_add_on_employee_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryItemAddOnEmployeeResponse

# Convert to/from dictionary
data_dict = salary_item_add_on_employee_response.to_dict()
salary_item_add_on_employee_response = SalaryItemAddOnEmployeeResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(salary_item_add_on_employee_response.identification_number)
# Update properties
salary_item_add_on_employee_response.identification_number = "new_value"
```
