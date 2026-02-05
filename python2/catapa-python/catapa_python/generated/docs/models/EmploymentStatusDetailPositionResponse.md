# EmploymentStatusDetailPositionResponse

## Properties

| Name             | Type   | Description |
| :--------------- | :----- | :---------- |
| `id`             | `str`  |             |
| `code`           | `str`  |             |
| `name`           | `str`  |             |
| `effective_date` | `date` | YYYY-MM-DD  |
| `end_date`       | `date` | YYYY-MM-DD  |

## Usage Examples

### Creating an instance

```python
from catapa import EmploymentStatusDetailPositionResponse

employment_status_detail_position_response = EmploymentStatusDetailPositionResponse(
    id="''",
    code="''",
    name="''",
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    end_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
)
```

### Working with JSON

```python
from catapa import EmploymentStatusDetailPositionResponse

# Parse from JSON
json_str = '{"id": "example"}'
employment_status_detail_position_response = (
    EmploymentStatusDetailPositionResponse.from_json(json_str)
)

# Convert to JSON
print(employment_status_detail_position_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmploymentStatusDetailPositionResponse

# Convert to/from dictionary
data_dict = employment_status_detail_position_response.to_dict()
employment_status_detail_position_response = (
    EmploymentStatusDetailPositionResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(employment_status_detail_position_response.id)
# Update properties
employment_status_detail_position_response.id = "new_value"
```
