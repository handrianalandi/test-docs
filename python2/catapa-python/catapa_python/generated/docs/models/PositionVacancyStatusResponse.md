# PositionVacancyStatusResponse

## Properties

| Name             | Type                                          | Description |
| :--------------- | :-------------------------------------------- | :---------- |
| `id`             | `str`                                         |             |
| `effective_date` | `str`                                         |             |
| `vacancy_status` | `str`                                         |             |
| `position`       | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |
| `created_by`     | `str`                                         |             |
| `created_date`   | `float`                                       |             |
| `updated_by`     | `str`                                         |             |
| `updated_date`   | `float`                                       |             |

## Usage Examples

### Creating an instance

```python
from catapa import PositionVacancyStatusResponse

position_vacancy_status_response = PositionVacancyStatusResponse(
    id="''",
    effective_date="''",
    vacancy_status="'VACANT'",
    position=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
)
```

### Working with JSON

```python
from catapa import PositionVacancyStatusResponse

# Parse from JSON
json_str = '{"id": "example"}'
position_vacancy_status_response = PositionVacancyStatusResponse.from_json(json_str)

# Convert to JSON
print(position_vacancy_status_response.to_json())
```

### Working with dictionaries

```python
from catapa import PositionVacancyStatusResponse

# Convert to/from dictionary
data_dict = position_vacancy_status_response.to_dict()
position_vacancy_status_response = PositionVacancyStatusResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(position_vacancy_status_response.id)
# Update properties
position_vacancy_status_response.id = "new_value"
```
