# FamilyApprovalListItemResponse

## Properties

| Name                   | Type                                                              | Description |
| :--------------------- | :---------------------------------------------------------------- | :---------- |
| `id`                   | `str`                                                             |             |
| `name`                 | `str`                                                             |             |
| `gender`               | `str`                                                             |             |
| `date_of_birth`        | `str`                                                             |             |
| `identity_card_number` | `str`                                                             |             |
| `family_relation`      | [`FamilyMemberRelationResponse`](FamilyMemberRelationResponse.md) |             |
| `employee`             | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)             |             |
| `place_of_birth`       | [`PlaceOfBirthResponse`](PlaceOfBirthResponse.md)                 |             |
| `alive`                | `bool`                                                            |             |
| `date_of_death`        | `str`                                                             |             |
| `marital_status`       | `object`                                                          |             |
| `marriage_date`        | `str`                                                             |             |
| `religion`             | [`ReligionResponse`](ReligionResponse.md)                         |             |
| `education_level`      | [`EducationLevelResponse`](EducationLevelResponse.md)             |             |
| `job`                  | `str`                                                             |             |
| `mobile_phone`         | `str`                                                             |             |
| `description`          | `str`                                                             |             |
| `family`               | [`FamilyApprovalResponse`](FamilyApprovalResponse.md)             |             |
| `approval_status`      | `str`                                                             |             |
| `rejection_reason`     | `str`                                                             |             |

## Usage Examples

### Creating an instance

```python
from catapa import FamilyApprovalListItemResponse

family_approval_list_item_response = FamilyApprovalListItemResponse(
    id="''",
    name="''",
    gender="''",
    date_of_birth="''",
    identity_card_number="''",
    family_relation=None,  # [FamilyMemberRelationResponse](FamilyMemberRelationResponse.md)
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    place_of_birth=None,  # [PlaceOfBirthResponse](PlaceOfBirthResponse.md)
    alive=True,
    date_of_death="''",
    marital_status=None,
    marriage_date="''",
    religion=None,  # [ReligionResponse](ReligionResponse.md)
    education_level=None,  # [EducationLevelResponse](EducationLevelResponse.md)
    job="''",
    mobile_phone="''",
    description="''",
    family=None,  # [FamilyApprovalResponse](FamilyApprovalResponse.md)
    approval_status="''",
    rejection_reason="''",
)
```

### Working with JSON

```python
from catapa import FamilyApprovalListItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
family_approval_list_item_response = FamilyApprovalListItemResponse.from_json(json_str)

# Convert to JSON
print(family_approval_list_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import FamilyApprovalListItemResponse

# Convert to/from dictionary
data_dict = family_approval_list_item_response.to_dict()
family_approval_list_item_response = FamilyApprovalListItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(family_approval_list_item_response.id)
# Update properties
family_approval_list_item_response.id = "new_value"
```
