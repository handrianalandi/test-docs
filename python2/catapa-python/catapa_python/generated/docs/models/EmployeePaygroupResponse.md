# EmployeePaygroupResponse

## Properties

| Name             | Type                                          | Description |
| :--------------- | :-------------------------------------------- | :---------- |
| `id`             | `str`                                         |             |
| `updated_date`   | `int`                                         |             |
| `employee`       | [`EmployeeResponse`](EmployeeResponse.md)     |             |
| `paygroup`       | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |
| `effective_date` | `date`                                        |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeePaygroupResponse

employee_paygroup_response = EmployeePaygroupResponse(
    id="''",
    updated_date=56,
    employee=None,  # [EmployeeResponse](EmployeeResponse.md)
    paygroup=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
)
```

### Working with JSON

```python
from catapa import EmployeePaygroupResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_paygroup_response = EmployeePaygroupResponse.from_json(json_str)

# Convert to JSON
print(employee_paygroup_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeePaygroupResponse

# Convert to/from dictionary
data_dict = employee_paygroup_response.to_dict()
employee_paygroup_response = EmployeePaygroupResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_paygroup_response.id)
# Update properties
employee_paygroup_response.id = "new_value"
```
