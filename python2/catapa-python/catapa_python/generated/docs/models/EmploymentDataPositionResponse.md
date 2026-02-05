# EmploymentDataPositionResponse

## Properties

| Name             | Type    | Description |
| :--------------- | :------ | :---------- |
| `id`             | `str`   |             |
| `code`           | `str`   |             |
| `name`           | `str`   |             |
| `assigned`       | `bool`  |             |
| `effective_date` | `str`   |             |
| `end_date`       | `str`   |             |
| `max_employees`  | `int`   |             |
| `created_by`     | `str`   |             |
| `created_date`   | `float` |             |
| `updated_by`     | `str`   |             |
| `updated_date`   | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmploymentDataPositionResponse

employment_data_position_response = EmploymentDataPositionResponse(
    id="''",
    code="''",
    name="''",
    assigned=True,
    effective_date="''",
    end_date="''",
    max_employees=56,
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
)
```

### Working with JSON

```python
from catapa import EmploymentDataPositionResponse

# Parse from JSON
json_str = '{"id": "example"}'
employment_data_position_response = EmploymentDataPositionResponse.from_json(json_str)

# Convert to JSON
print(employment_data_position_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmploymentDataPositionResponse

# Convert to/from dictionary
data_dict = employment_data_position_response.to_dict()
employment_data_position_response = EmploymentDataPositionResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employment_data_position_response.id)
# Update properties
employment_data_position_response.id = "new_value"
```
