# FamilyApprovalRequest

## Properties

| Name                   | Type                                            | Required | Description                                                                                                                                                                 |
| :--------------------- | :---------------------------------------------- | :------: | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `name`                 | `str`                                           |    ✅    |                                                                                                                                                                             |
| `gender`               | `str`                                           |    ✅    |                                                                                                                                                                             |
| `date_of_birth`        | `date`                                          |    ❌    | YYYY-MM-DD                                                                                                                                                                  |
| `identity_card_number` | `str`                                           |    ❌    |                                                                                                                                                                             |
| `family_relation`      | [`IdRequest`](IdRequest.md)                     |    ✅    |                                                                                                                                                                             |
| `place_of_birth`       | [`PlaceOfBirthRequest`](PlaceOfBirthRequest.md) |    ❌    |                                                                                                                                                                             |
| `alive`                | `bool`                                          |    ❌    | (default: `True`)                                                                                                                                                           |
| `date_of_death`        | `date`                                          |    ❌    | If left \<b>null\</b> and the individual is marked as \<b>not alive\</b>, the system will automatically set the date of death to the default value of \`December 31, 9999\` |
| `marital_status`       | `str`                                           |    ❌    |                                                                                                                                                                             |
| `marriage_date`        | `date`                                          |    ❌    | YYYY-MM-DD                                                                                                                                                                  |
| `religion`             | `object`                                        |    ❌    |                                                                                                                                                                             |
| `education_level`      | `object`                                        |    ❌    |                                                                                                                                                                             |
| `job`                  | `str`                                           |    ❌    | Alphanumeric with space, e.g. \`Software Engineer 1\`                                                                                                                       |
| `mobile_phone`         | `str`                                           |    ❌    | e.g. \`+6281234567890\`                                                                                                                                                     |
| `description`          | `str`                                           |    ❌    |                                                                                                                                                                             |

## Usage Examples

### Creating an instance

```python
from catapa import FamilyApprovalRequest

family_approval_request = FamilyApprovalRequest(
    name="'0'",
    gender="'MALE'",
    date_of_birth=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    identity_card_number="''",
    family_relation=None,  # [IdRequest](IdRequest.md)
    place_of_birth=None,  # [PlaceOfBirthRequest](PlaceOfBirthRequest.md)
    alive=True,
    date_of_death=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    marital_status="'SINGLE'",
    marriage_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    religion=None,
    education_level=None,
    job="'G'",
    mobile_phone="'+08988'",
    description="''",
)
```

### Working with JSON

```python
from catapa import FamilyApprovalRequest

# Parse from JSON
json_str = '{"name": "example"}'
family_approval_request = FamilyApprovalRequest.from_json(json_str)

# Convert to JSON
print(family_approval_request.to_json())
```

### Working with dictionaries

```python
from catapa import FamilyApprovalRequest

# Convert to/from dictionary
data_dict = family_approval_request.to_dict()
family_approval_request = FamilyApprovalRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(family_approval_request.name)
# Update properties
family_approval_request.name = "new_value"
```
