# SalaryItemResponse

## Properties

| Name                   | Type   | Description |
| :--------------------- | :----- | :---------- |
| `id`                   | `UUID` |             |
| `code`                 | `str`  |             |
| `name`                 | `str`  |             |
| `payslip_name`         | `str`  |             |
| `salary_item_category` | `str`  |             |
| `pph21_method`         | `str`  |             |
| `pph21_item`           | `str`  |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryItemResponse

salary_item_response = SalaryItemResponse(
    id="''",
    code="''",
    name="''",
    payslip_name="''",
    salary_item_category="''",
    pph21_method="''",
    pph21_item="''",
)
```

### Working with JSON

```python
from catapa import SalaryItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
salary_item_response = SalaryItemResponse.from_json(json_str)

# Convert to JSON
print(salary_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryItemResponse

# Convert to/from dictionary
data_dict = salary_item_response.to_dict()
salary_item_response = SalaryItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_item_response.id)
# Update properties
salary_item_response.id = "new_value"
```
