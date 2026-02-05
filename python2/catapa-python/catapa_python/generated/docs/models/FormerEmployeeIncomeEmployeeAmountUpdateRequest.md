# FormerEmployeeIncomeEmployeeAmountUpdateRequest

## Properties

| Name     | Type    | Required | Description        |
| :------- | :------ | :------: | :----------------- |
| `id`     | `str`   |    ✅    | Employee income ID |
| `amount` | `float` |    ✅    | Updated amount     |

## Usage Examples

### Creating an instance

```python
from catapa import FormerEmployeeIncomeEmployeeAmountUpdateRequest

former_employee_income_employee_amount_update_request = (
    FormerEmployeeIncomeEmployeeAmountUpdateRequest(id="''", amount=1.337)
)
```

### Working with JSON

```python
from catapa import FormerEmployeeIncomeEmployeeAmountUpdateRequest

# Parse from JSON
json_str = '{"id": "example"}'
former_employee_income_employee_amount_update_request = (
    FormerEmployeeIncomeEmployeeAmountUpdateRequest.from_json(json_str)
)

# Convert to JSON
print(former_employee_income_employee_amount_update_request.to_json())
```

### Working with dictionaries

```python
from catapa import FormerEmployeeIncomeEmployeeAmountUpdateRequest

# Convert to/from dictionary
data_dict = former_employee_income_employee_amount_update_request.to_dict()
former_employee_income_employee_amount_update_request = (
    FormerEmployeeIncomeEmployeeAmountUpdateRequest.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(former_employee_income_employee_amount_update_request.id)
# Update properties
former_employee_income_employee_amount_update_request.id = "new_value"
```
