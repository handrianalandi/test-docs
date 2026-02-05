# AdditionalFamilyMembershipResponse

## Properties

| Name                              | Type                                                              | Description |
| :-------------------------------- | :---------------------------------------------------------------- | :---------- |
| `id`                              | `str`                                                             |             |
| `family_member_name`              | `str`                                                             |             |
| `family_member_relation`          | [`FamilyMemberRelationResponse`](FamilyMemberRelationResponse.md) |             |
| `first_level_healthcare_facility` | `str`                                                             |             |
| `dental_healthcare_facility`      | `str`                                                             |             |

## Usage Examples

### Creating an instance

```python
from catapa import AdditionalFamilyMembershipResponse

additional_family_membership_response = AdditionalFamilyMembershipResponse(
    id="''",
    family_member_name="''",
    family_member_relation=None,  # [FamilyMemberRelationResponse](FamilyMemberRelationResponse.md)
    first_level_healthcare_facility="''",
    dental_healthcare_facility="''",
)
```

### Working with JSON

```python
from catapa import AdditionalFamilyMembershipResponse

# Parse from JSON
json_str = '{"id": "example"}'
additional_family_membership_response = AdditionalFamilyMembershipResponse.from_json(
    json_str
)

# Convert to JSON
print(additional_family_membership_response.to_json())
```

### Working with dictionaries

```python
from catapa import AdditionalFamilyMembershipResponse

# Convert to/from dictionary
data_dict = additional_family_membership_response.to_dict()
additional_family_membership_response = AdditionalFamilyMembershipResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(additional_family_membership_response.id)
# Update properties
additional_family_membership_response.id = "new_value"
```
