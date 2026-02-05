# FormerEmployeeIncomeEmployeeResponse

## Properties

| Name                     | Type                                                              | Description                        |
| :----------------------- | :---------------------------------------------------------------- | :--------------------------------- |
| `id`                     | `str`                                                             | Former employee income employee ID |
| `former_employee_income` | [`FormerEmployeeIncomeResponse`](FormerEmployeeIncomeResponse.md) |                                    |
| `employee`               | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)             |                                    |
| `amount`                 | `float`                                                           | Income amount                      |
| `last_working_date`      | `date`                                                            | Last working date                  |
| `payment_date`           | `date`                                                            | Payment date                       |
| `payment_method`         | `str`                                                             | Payment method                     |
| `total_thp`              | `float`                                                           | Total take home pay                |
| `original_tax`           | `float`                                                           | Original tax amount                |
| `penalty_tax`            | `float`                                                           | Penalty tax amount                 |
| `tax_allowance`          | `float`                                                           | Tax allowance amount               |

## Usage Examples

### Creating an instance

```python
from catapa import FormerEmployeeIncomeEmployeeResponse

former_employee_income_employee_response = FormerEmployeeIncomeEmployeeResponse(
    id="''",
    former_employee_income=None,  # [FormerEmployeeIncomeResponse](FormerEmployeeIncomeResponse.md)
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    amount=1.337,
    last_working_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    payment_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    payment_method="''",
    total_thp=1.337,
    original_tax=1.337,
    penalty_tax=1.337,
    tax_allowance=1.337,
)
```

### Working with JSON

```python
from catapa import FormerEmployeeIncomeEmployeeResponse

# Parse from JSON
json_str = '{"id": "example"}'
former_employee_income_employee_response = (
    FormerEmployeeIncomeEmployeeResponse.from_json(json_str)
)

# Convert to JSON
print(former_employee_income_employee_response.to_json())
```

### Working with dictionaries

```python
from catapa import FormerEmployeeIncomeEmployeeResponse

# Convert to/from dictionary
data_dict = former_employee_income_employee_response.to_dict()
former_employee_income_employee_response = (
    FormerEmployeeIncomeEmployeeResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(former_employee_income_employee_response.id)
# Update properties
former_employee_income_employee_response.id = "new_value"
```
