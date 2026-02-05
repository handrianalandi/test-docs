# EmployeeDetailResponse

## Properties

| Name             | Type                                              | Description |
| :--------------- | :------------------------------------------------ | :---------- |
| `id`             | `str`                                             |             |
| `marital_status` | `str`                                             |             |
| `religion`       | [`ReligionResponse`](ReligionResponse.md)         |             |
| `foreign_labour` | `bool`                                            |             |
| `citizenship`    | [`CountryResponse`](CountryResponse.md)           |             |
| `name`           | `str`                                             |             |
| `date_of_birth`  | `date`                                            | YYYY-MM-DD  |
| `place_of_birth` | [`CityResponse`](CityResponse.md)                 |             |
| `gender`         | `str`                                             |             |
| `blood_type`     | `str`                                             |             |
| `effective_date` | `date`                                            | YYYY-MM-DD  |
| `created_by`     | `str`                                             |             |
| `created_date`   | `float`                                           |             |
| `updated_by`     | `str`                                             |             |
| `updated_date`   | `float`                                           |             |
| `employee`       | [`EmployeeFullResponse`](EmployeeFullResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeDetailResponse

employee_detail_response = EmployeeDetailResponse(
    id="''",
    marital_status="'SINGLE'",
    religion=None,  # [ReligionResponse](ReligionResponse.md)
    foreign_labour=True,
    citizenship=None,  # [CountryResponse](CountryResponse.md)
    name="''",
    date_of_birth=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    place_of_birth=None,  # [CityResponse](CityResponse.md)
    gender="'MALE'",
    blood_type="'A'",
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
    employee=None,  # [EmployeeFullResponse](EmployeeFullResponse.md)
)
```

### Working with JSON

```python
from catapa import EmployeeDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_detail_response = EmployeeDetailResponse.from_json(json_str)

# Convert to JSON
print(employee_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeDetailResponse

# Convert to/from dictionary
data_dict = employee_detail_response.to_dict()
employee_detail_response = EmployeeDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_detail_response.id)
# Update properties
employee_detail_response.id = "new_value"
```
