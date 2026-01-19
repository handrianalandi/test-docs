# AdditionalFamilyMembershipResponse

## Properties

| Name                                   | Type                                                                | Description | Notes       |
| -------------------------------------- | ------------------------------------------------------------------- | ----------- | ----------- |
| **id**                                 | **str**                                                             |             |             |
| **family\_member\_name**               | **str**                                                             |             |             |
| **family\_member\_relation**           | [**FamilyMemberRelationResponse**](familymemberrelationresponse.md) |             |             |
| **first\_level\_healthcare\_facility** | **str**                                                             |             | \[optional] |
| **dental\_healthcare\_facility**       | **str**                                                             |             | \[optional] |

## Example

```python
from catapa import AdditionalFamilyMembershipResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalFamilyMembershipResponse from a JSON string
additional_family_membership_response_instance = AdditionalFamilyMembershipResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalFamilyMembershipResponse.to_json())

# convert the object into a dict
additional_family_membership_response_dict = additional_family_membership_response_instance.to_dict()
# create an instance of AdditionalFamilyMembershipResponse from a dict
additional_family_membership_response_from_dict = AdditionalFamilyMembershipResponse.from_dict(additional_family_membership_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
