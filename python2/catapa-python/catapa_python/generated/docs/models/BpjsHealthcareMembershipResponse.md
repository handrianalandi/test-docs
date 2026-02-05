# BpjsHealthcareMembershipResponse

## Properties

| Name                              | Type                                                                                  | Description                          |
| :-------------------------------- | :------------------------------------------------------------------------------------ | :----------------------------------- |
| `id`                              | `str`                                                                                 | ID of the BPJS Healthcare Membership |
| `employee_id`                     | `str`                                                                                 |                                      |
| `membership_number`               | `str`                                                                                 |                                      |
| `start_date`                      | `str`                                                                                 |                                      |
| `end_date`                        | `str`                                                                                 |                                      |
| `effective_date`                  | `str`                                                                                 |                                      |
| `first_level_healthcare_facility` | `str`                                                                                 |                                      |
| `dental_healthcare_facility`      | `str`                                                                                 |                                      |
| `bpjs_healthcare_provider`        | [`BpjsHealthcareProviderListItemResponse`](BpjsHealthcareProviderListItemResponse.md) |                                      |
| `bpjs_healthcare_template`        | [`BpjsHealthcareTemplateListItemResponse`](BpjsHealthcareTemplateListItemResponse.md) |                                      |
| `bpjs_healthcare_treatment_class` | [`BpjsHealthcareTreatmentClassResponse`](BpjsHealthcareTreatmentClassResponse.md)     |                                      |
| `additional_family_memberships`   | [`List[AdditionalFamilyMembershipResponse]`](AdditionalFamilyMembershipResponse.md)   |                                      |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsHealthcareMembershipResponse

bpjs_healthcare_membership_response = BpjsHealthcareMembershipResponse(
    id="''",
    employee_id="''",
    membership_number="''",
    start_date="''",
    end_date="''",
    effective_date="''",
    first_level_healthcare_facility="''",
    dental_healthcare_facility="''",
    bpjs_healthcare_provider=None,  # [BpjsHealthcareProviderListItemResponse](BpjsHealthcareProviderListItemResponse.md)
    bpjs_healthcare_template=None,  # [BpjsHealthcareTemplateListItemResponse](BpjsHealthcareTemplateListItemResponse.md)
    bpjs_healthcare_treatment_class=None,  # [BpjsHealthcareTreatmentClassResponse](BpjsHealthcareTreatmentClassResponse.md)
    additional_family_memberships=[],  # List[[AdditionalFamilyMembershipResponse](AdditionalFamilyMembershipResponse.md)]
)
```

### Working with JSON

```python
from catapa import BpjsHealthcareMembershipResponse

# Parse from JSON
json_str = '{"id": "example"}'
bpjs_healthcare_membership_response = BpjsHealthcareMembershipResponse.from_json(
    json_str
)

# Convert to JSON
print(bpjs_healthcare_membership_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsHealthcareMembershipResponse

# Convert to/from dictionary
data_dict = bpjs_healthcare_membership_response.to_dict()
bpjs_healthcare_membership_response = BpjsHealthcareMembershipResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(bpjs_healthcare_membership_response.id)
# Update properties
bpjs_healthcare_membership_response.id = "new_value"
```
