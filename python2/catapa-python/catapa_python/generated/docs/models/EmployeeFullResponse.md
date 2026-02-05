# EmployeeFullResponse

## Properties

| Name                    | Type                                                    | Description |
| :---------------------- | :------------------------------------------------------ | :---------- |
| `id`                    | `str`                                                   |             |
| `identification_number` | `str`                                                   |             |
| `name`                  | `str`                                                   |             |
| `join_date`             | `date`                                                  | YYYY-MM-DD  |
| `start_date`            | `date`                                                  | YYYY-MM-DD  |
| `active`                | `bool`                                                  |             |
| `point_of_hire`         | [`PointOfHireResponse`](PointOfHireResponse.md)         |             |
| `photo`                 | [`PhotoResponse`](PhotoResponse.md)                     |             |
| `manager`               | [`EmployeeManagerResponse`](EmployeeManagerResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeFullResponse

employee_full_response = EmployeeFullResponse(
    id="''",
    identification_number="''",
    name="''",
    join_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    start_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    active=True,
    point_of_hire=None,  # [PointOfHireResponse](PointOfHireResponse.md)
    photo=None,  # [PhotoResponse](PhotoResponse.md)
    manager=None,  # [EmployeeManagerResponse](EmployeeManagerResponse.md)
)
```

### Working with JSON

```python
from catapa import EmployeeFullResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_full_response = EmployeeFullResponse.from_json(json_str)

# Convert to JSON
print(employee_full_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeFullResponse

# Convert to/from dictionary
data_dict = employee_full_response.to_dict()
employee_full_response = EmployeeFullResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_full_response.id)
# Update properties
employee_full_response.id = "new_value"
```
