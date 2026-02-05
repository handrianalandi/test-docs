# BpjsHealthcareMembershipRequest

## Properties

| Name                                 | Type                                                                                                                | Required | Description                                                            |
| :----------------------------------- | :------------------------------------------------------------------------------------------------------------------ | :------: | :--------------------------------------------------------------------- |
| `additional_family_memberships`      | [`List[BpjsHealthcareMembershipAdditionalFamilyMembership]`](BpjsHealthcareMembershipAdditionalFamilyMembership.md) |    ✅    |                                                                        |
| `bpjs_healthcare_provider_id`        | `str`                                                                                                               |    ✅    |                                                                        |
| `bpjs_healthcare_template_id`        | `str`                                                                                                               |    ✅    |                                                                        |
| `bpjs_healthcare_treatment_class_id` | `str`                                                                                                               |    ❌    |                                                                        |
| `dental_healthcare_facility`         | `str`                                                                                                               |    ❌    |                                                                        |
| `first_level_healthcare_facility`    | `str`                                                                                                               |    ❌    |                                                                        |
| `membership_number`                  | `str`                                                                                                               |    ✅    |                                                                        |
| `start_date`                         | `str`                                                                                                               |    ✅    |                                                                        |
| `effective_date`                     | `str`                                                                                                               |    ❌    | Effective Date of the BPJS Healthcare Membership default to start date |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsHealthcareMembershipRequest

bpjs_healthcare_membership_request = BpjsHealthcareMembershipRequest(
    additional_family_memberships=[],  # List[[BpjsHealthcareMembershipAdditionalFamilyMembership](BpjsHealthcareMembershipAdditionalFamilyMembership.md)]
    bpjs_healthcare_provider_id="''",
    bpjs_healthcare_template_id="''",
    bpjs_healthcare_treatment_class_id="''",
    dental_healthcare_facility="''",
    first_level_healthcare_facility="''",
    membership_number="''",
    start_date="''",
    effective_date="''",
)
```

### Working with JSON

```python
from catapa import BpjsHealthcareMembershipRequest

# Parse from JSON
json_str = '{"additional_family_memberships": "example"}'
bpjs_healthcare_membership_request = BpjsHealthcareMembershipRequest.from_json(json_str)

# Convert to JSON
print(bpjs_healthcare_membership_request.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsHealthcareMembershipRequest

# Convert to/from dictionary
data_dict = bpjs_healthcare_membership_request.to_dict()
bpjs_healthcare_membership_request = BpjsHealthcareMembershipRequest.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(bpjs_healthcare_membership_request.additional_family_memberships)
# Update properties
bpjs_healthcare_membership_request.additional_family_memberships = new_value
```
