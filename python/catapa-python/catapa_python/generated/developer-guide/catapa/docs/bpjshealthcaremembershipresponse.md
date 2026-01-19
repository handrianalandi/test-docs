# BpjsHealthcareMembershipResponse

## Properties

| Name                                   | Type                                                                                    | Description                          | Notes       |
| -------------------------------------- | --------------------------------------------------------------------------------------- | ------------------------------------ | ----------- |
| **id**                                 | **str**                                                                                 | ID of the BPJS Healthcare Membership | \[optional] |
| **employee\_id**                       | **str**                                                                                 |                                      | \[optional] |
| **membership\_number**                 | **str**                                                                                 |                                      | \[optional] |
| **start\_date**                        | **str**                                                                                 |                                      | \[optional] |
| **end\_date**                          | **str**                                                                                 |                                      | \[optional] |
| **effective\_date**                    | **str**                                                                                 |                                      | \[optional] |
| **first\_level\_healthcare\_facility** | **str**                                                                                 |                                      | \[optional] |
| **dental\_healthcare\_facility**       | **str**                                                                                 |                                      | \[optional] |
| **bpjs\_healthcare\_provider**         | [**BpjsHealthcareProviderListItemResponse**](bpjshealthcareproviderlistitemresponse.md) |                                      | \[optional] |
| **bpjs\_healthcare\_template**         | [**BpjsHealthcareTemplateListItemResponse**](bpjshealthcaretemplatelistitemresponse.md) |                                      | \[optional] |
| **bpjs\_healthcare\_treatment\_class** | [**BpjsHealthcareTreatmentClassResponse**](bpjshealthcaretreatmentclassresponse.md)     |                                      | \[optional] |
| **additional\_family\_memberships**    | [**List\[AdditionalFamilyMembershipResponse\]**](additionalfamilymembershipresponse.md) |                                      | \[optional] |

## Example

```python
from catapa import BpjsHealthcareMembershipResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcareMembershipResponse from a JSON string
bpjs_healthcare_membership_response_instance = BpjsHealthcareMembershipResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcareMembershipResponse.to_json())

# convert the object into a dict
bpjs_healthcare_membership_response_dict = bpjs_healthcare_membership_response_instance.to_dict()
# create an instance of BpjsHealthcareMembershipResponse from a dict
bpjs_healthcare_membership_response_from_dict = BpjsHealthcareMembershipResponse.from_dict(bpjs_healthcare_membership_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
