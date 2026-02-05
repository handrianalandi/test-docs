# EditableSalaryPreprocessRequest

## Properties

| Name                             | Type    | Required | Description                    |
| :------------------------------- | :------ | :------: | :----------------------------- |
| `employee_identification_number` | `str`   |    ❌    | Employee identification number |
| `salary_item_code`               | `str`   |    ❌    | Salary item code               |
| `amount`                         | `float` |    ❌    | Amount                         |
| `period`                         | `int`   |    ❌    | Period                         |
| `year`                           | `int`   |    ❌    | Year                           |

## Usage Examples

### Creating an instance

```python
from catapa import EditableSalaryPreprocessRequest

editable_salary_preprocess_request = EditableSalaryPreprocessRequest(
    employee_identification_number="''",
    salary_item_code="''",
    amount=1.337,
    period=56,
    year=56,
)
```

### Working with JSON

```python
from catapa import EditableSalaryPreprocessRequest

# Parse from JSON
json_str = '{"employee_identification_number": "example"}'
editable_salary_preprocess_request = EditableSalaryPreprocessRequest.from_json(json_str)

# Convert to JSON
print(editable_salary_preprocess_request.to_json())
```

### Working with dictionaries

```python
from catapa import EditableSalaryPreprocessRequest

# Convert to/from dictionary
data_dict = editable_salary_preprocess_request.to_dict()
editable_salary_preprocess_request = EditableSalaryPreprocessRequest.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(editable_salary_preprocess_request.employee_identification_number)
# Update properties
editable_salary_preprocess_request.employee_identification_number = "new_value"
```
