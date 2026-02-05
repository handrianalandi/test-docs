# EducationResponse

## Properties

| Name              | Type                                                  | Description |
| :---------------- | :---------------------------------------------------- | :---------- |
| `id`              | `str`                                                 |             |
| `education_level` | [`EducationLevelResponse`](EducationLevelResponse.md) |             |
| `field_of_study`  | [`FieldOfStudyResponse`](FieldOfStudyResponse.md)     |             |
| `country`         | [`CountryResponse`](CountryResponse.md)               |             |
| `institution`     | [`InstitutionResponse`](InstitutionResponse.md)       |             |
| `start_date`      | `str`                                                 |             |
| `graduation_date` | `str`                                                 |             |
| `created_by`      | `str`                                                 |             |
| `created_date`    | `float`                                               |             |
| `updated_by`      | `str`                                                 |             |
| `updated_date`    | `float`                                               |             |

## Usage Examples

### Creating an instance

```python
from catapa import EducationResponse

education_response = EducationResponse(
    id="''",
    education_level=None,  # [EducationLevelResponse](EducationLevelResponse.md)
    field_of_study=None,  # [FieldOfStudyResponse](FieldOfStudyResponse.md)
    country=None,  # [CountryResponse](CountryResponse.md)
    institution=None,  # [InstitutionResponse](InstitutionResponse.md)
    start_date="''",
    graduation_date="''",
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
)
```

### Working with JSON

```python
from catapa import EducationResponse

# Parse from JSON
json_str = '{"id": "example"}'
education_response = EducationResponse.from_json(json_str)

# Convert to JSON
print(education_response.to_json())
```

### Working with dictionaries

```python
from catapa import EducationResponse

# Convert to/from dictionary
data_dict = education_response.to_dict()
education_response = EducationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(education_response.id)
# Update properties
education_response.id = "new_value"
```
