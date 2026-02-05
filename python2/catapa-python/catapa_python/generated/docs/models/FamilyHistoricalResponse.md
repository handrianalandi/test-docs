# FamilyHistoricalResponse

## Properties

| Name              | Type                                                              | Description |
| :---------------- | :---------------------------------------------------------------- | :---------- |
| `id`              | `str`                                                             |             |
| `name`            | `str`                                                             |             |
| `gender`          | `str`                                                             |             |
| `date_of_birth`   | `date`                                                            | YYYY-MM-DD  |
| `family_relation` | [`FamilyMemberRelationResponse`](FamilyMemberRelationResponse.md) |             |
| `effective_date`  | `date`                                                            | YYYY-MM-DD  |
| `end_date`        | `date`                                                            | YYYY-MM-DD  |
| `created_by`      | `str`                                                             |             |
| `created_date`    | `float`                                                           |             |
| `updated_by`      | `str`                                                             |             |
| `updated_date`    | `float`                                                           |             |

## Usage Examples

### Creating an instance

```python
from catapa import FamilyHistoricalResponse

family_historical_response = FamilyHistoricalResponse(
    id="''",
    name="''",
    gender="'MALE'",
    date_of_birth=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    family_relation=None,  # [FamilyMemberRelationResponse](FamilyMemberRelationResponse.md)
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    end_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
)
```

### Working with JSON

```python
from catapa import FamilyHistoricalResponse

# Parse from JSON
json_str = '{"id": "example"}'
family_historical_response = FamilyHistoricalResponse.from_json(json_str)

# Convert to JSON
print(family_historical_response.to_json())
```

### Working with dictionaries

```python
from catapa import FamilyHistoricalResponse

# Convert to/from dictionary
data_dict = family_historical_response.to_dict()
family_historical_response = FamilyHistoricalResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(family_historical_response.id)
# Update properties
family_historical_response.id = "new_value"
```
