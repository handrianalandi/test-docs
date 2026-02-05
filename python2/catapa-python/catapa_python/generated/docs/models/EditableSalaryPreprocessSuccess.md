# EditableSalaryPreprocessSuccess

## Properties

| Name                             | Type    | Required | Description |
| :------------------------------- | :------ | :------: | :---------- |
| `employee_identification_number` | `str`   |    ❌    |             |
| `salary_item_code`               | `str`   |    ❌    |             |
| `amount`                         | `float` |    ❌    |             |
| `period`                         | `int`   |    ❌    |             |
| `year`                           | `int`   |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import EditableSalaryPreprocessSuccess

editable_salary_preprocess_success = EditableSalaryPreprocessSuccess(
    employee_identification_number="''",
    salary_item_code="''",
    amount=1.337,
    period=56,
    year=56,
)
```

### Working with JSON

```python
from catapa import EditableSalaryPreprocessSuccess

# Parse from JSON
json_str = '{"employee_identification_number": "example"}'
editable_salary_preprocess_success = EditableSalaryPreprocessSuccess.from_json(json_str)

# Convert to JSON
print(editable_salary_preprocess_success.to_json())
```

### Working with dictionaries

```python
from catapa import EditableSalaryPreprocessSuccess

# Convert to/from dictionary
data_dict = editable_salary_preprocess_success.to_dict()
editable_salary_preprocess_success = EditableSalaryPreprocessSuccess.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(editable_salary_preprocess_success.employee_identification_number)
# Update properties
editable_salary_preprocess_success.employee_identification_number = "new_value"
```
