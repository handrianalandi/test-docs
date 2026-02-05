# BpjsHealthcareMembershipAdditionalFamilyMembership

## Properties

| Name                              | Type  | Required | Description |
| :-------------------------------- | :---- | :------: | :---------- |
| `dental_healthcare_facility`      | `str` |    ❌    |             |
| `family_member_name`              | `str` |    ✅    |             |
| `family_member_relation_id`       | `str` |    ✅    |             |
| `first_level_healthcare_facility` | `str` |    ❌    |             |
| `id`                              | `str` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsHealthcareMembershipAdditionalFamilyMembership

bpjs_healthcare_membership_additional_family_membership = (
    BpjsHealthcareMembershipAdditionalFamilyMembership(
        dental_healthcare_facility="''",
        family_member_name="''",
        family_member_relation_id="''",
        first_level_healthcare_facility="''",
        id="''",
    )
)
```

### Working with JSON

```python
from catapa import BpjsHealthcareMembershipAdditionalFamilyMembership

# Parse from JSON
json_str = '{"dental_healthcare_facility": "example"}'
bpjs_healthcare_membership_additional_family_membership = (
    BpjsHealthcareMembershipAdditionalFamilyMembership.from_json(json_str)
)

# Convert to JSON
print(bpjs_healthcare_membership_additional_family_membership.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsHealthcareMembershipAdditionalFamilyMembership

# Convert to/from dictionary
data_dict = bpjs_healthcare_membership_additional_family_membership.to_dict()
bpjs_healthcare_membership_additional_family_membership = (
    BpjsHealthcareMembershipAdditionalFamilyMembership.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(
    bpjs_healthcare_membership_additional_family_membership.dental_healthcare_facility
)
# Update properties
bpjs_healthcare_membership_additional_family_membership.dental_healthcare_facility = (
    "new_value"
)
```
