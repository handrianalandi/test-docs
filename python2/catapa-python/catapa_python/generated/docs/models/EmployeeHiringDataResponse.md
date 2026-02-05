# EmployeeHiringDataResponse

## Properties

| Name                    | Type                                                    | Description |
| :---------------------- | :------------------------------------------------------ | :---------- |
| `id`                    | `str`                                                   |             |
| `identification_number` | `str`                                                   |             |
| `join_date`             | `date`                                                  |             |
| `name`                  | `str`                                                   |             |
| `start_date`            | `date`                                                  |             |
| `point_of_hire`         | [`PointOfHireResponse`](PointOfHireResponse.md)         |             |
| `photo`                 | [`PhotoResponse`](PhotoResponse.md)                     |             |
| `manager`               | [`EmployeeManagerResponse`](EmployeeManagerResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeHiringDataResponse

employee_hiring_data_response = EmployeeHiringDataResponse(
    id="''",
    identification_number="''",
    join_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    name="''",
    start_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    point_of_hire=None,  # [PointOfHireResponse](PointOfHireResponse.md)
    photo=None,  # [PhotoResponse](PhotoResponse.md)
    manager=None,  # [EmployeeManagerResponse](EmployeeManagerResponse.md)
)
```

### Working with JSON

```python
from catapa import EmployeeHiringDataResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_hiring_data_response = EmployeeHiringDataResponse.from_json(json_str)

# Convert to JSON
print(employee_hiring_data_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeHiringDataResponse

# Convert to/from dictionary
data_dict = employee_hiring_data_response.to_dict()
employee_hiring_data_response = EmployeeHiringDataResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_hiring_data_response.id)
# Update properties
employee_hiring_data_response.id = "new_value"
```
