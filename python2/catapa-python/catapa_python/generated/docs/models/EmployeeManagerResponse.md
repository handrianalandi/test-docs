# EmployeeManagerResponse

## Properties

| Name                    | Type                                            | Description |
| :---------------------- | :---------------------------------------------- | :---------- |
| `id`                    | `str`                                           |             |
| `identification_number` | `str`                                           |             |
| `name`                  | `str`                                           |             |
| `join_date`             | `date`                                          | YYYY-MM-DD  |
| `start_date`            | `date`                                          | YYYY-MM-DD  |
| `active`                | `bool`                                          |             |
| `point_of_hire`         | [`PointOfHireResponse`](PointOfHireResponse.md) |             |
| `photo`                 | [`PhotoResponse`](PhotoResponse.md)             |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeManagerResponse

employee_manager_response = EmployeeManagerResponse(
    id="''",
    identification_number="''",
    name="''",
    join_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    start_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    active=True,
    point_of_hire=None,  # [PointOfHireResponse](PointOfHireResponse.md)
    photo=None,  # [PhotoResponse](PhotoResponse.md)
)
```

### Working with JSON

```python
from catapa import EmployeeManagerResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_manager_response = EmployeeManagerResponse.from_json(json_str)

# Convert to JSON
print(employee_manager_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeManagerResponse

# Convert to/from dictionary
data_dict = employee_manager_response.to_dict()
employee_manager_response = EmployeeManagerResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_manager_response.id)
# Update properties
employee_manager_response.id = "new_value"
```
