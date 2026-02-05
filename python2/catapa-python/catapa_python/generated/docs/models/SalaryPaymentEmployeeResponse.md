# SalaryPaymentEmployeeResponse

## Properties

| Name                    | Type                                                                                | Description |
| :---------------------- | :---------------------------------------------------------------------------------- | :---------- |
| `id`                    | `str`                                                                               |             |
| `identification_number` | `str`                                                                               |             |
| `name`                  | `str`                                                                               |             |
| `employment_status`     | [`SalaryPaymentEmploymentStatusResponse`](SalaryPaymentEmploymentStatusResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryPaymentEmployeeResponse

salary_payment_employee_response = SalaryPaymentEmployeeResponse(
    id="''",
    identification_number="''",
    name="''",
    employment_status=None,  # [SalaryPaymentEmploymentStatusResponse](SalaryPaymentEmploymentStatusResponse.md)
)
```

### Working with JSON

```python
from catapa import SalaryPaymentEmployeeResponse

# Parse from JSON
json_str = '{"id": "example"}'
salary_payment_employee_response = SalaryPaymentEmployeeResponse.from_json(json_str)

# Convert to JSON
print(salary_payment_employee_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryPaymentEmployeeResponse

# Convert to/from dictionary
data_dict = salary_payment_employee_response.to_dict()
salary_payment_employee_response = SalaryPaymentEmployeeResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_payment_employee_response.id)
# Update properties
salary_payment_employee_response.id = "new_value"
```
