# FormerEmployeeIncomeResponse

## Properties

| Name                        | Type   | Description                     |
| :-------------------------- | :----- | :------------------------------ |
| `id`                        | `str`  | Former employee income ID       |
| `item_name`                 | `str`  | Income item name                |
| `item_type`                 | `str`  | Income item type                |
| `reference_date`            | `date` | Reference date                  |
| `pph21_method`              | `str`  | PPH21 calculation method        |
| `minimum_last_working_date` | `date` | Minimum last working date       |
| `proportional_method`       | `str`  | Proportional calculation method |
| `proportional_days`         | `int`  | Number of proportional days     |
| `formula`                   | `str`  | Calculation formula             |

## Usage Examples

### Creating an instance

```python
from catapa import FormerEmployeeIncomeResponse

former_employee_income_response = FormerEmployeeIncomeResponse(
    id="''",
    item_name="''",
    item_type="''",
    reference_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    pph21_method="''",
    minimum_last_working_date=datetime.datetime.strptime(
        "1975-12-30", "%Y-%m-%d"
    ).date(),
    proportional_method="''",
    proportional_days=56,
    formula="''",
)
```

### Working with JSON

```python
from catapa import FormerEmployeeIncomeResponse

# Parse from JSON
json_str = '{"id": "example"}'
former_employee_income_response = FormerEmployeeIncomeResponse.from_json(json_str)

# Convert to JSON
print(former_employee_income_response.to_json())
```

### Working with dictionaries

```python
from catapa import FormerEmployeeIncomeResponse

# Convert to/from dictionary
data_dict = former_employee_income_response.to_dict()
former_employee_income_response = FormerEmployeeIncomeResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(former_employee_income_response.id)
# Update properties
former_employee_income_response.id = "new_value"
```
