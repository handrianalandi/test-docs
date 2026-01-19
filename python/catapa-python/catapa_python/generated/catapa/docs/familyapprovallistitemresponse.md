# FamilyApprovalListItemResponse

## Properties

| Name                       | Type                                                                | Description | Notes       |
| -------------------------- | ------------------------------------------------------------------- | ----------- | ----------- |
| **id**                     | **str**                                                             |             | \[optional] |
| **name**                   | **str**                                                             |             | \[optional] |
| **gender**                 | **str**                                                             |             | \[optional] |
| **date\_of\_birth**        | **str**                                                             |             | \[optional] |
| **identity\_card\_number** | **str**                                                             |             | \[optional] |
| **family\_relation**       | [**FamilyMemberRelationResponse**](familymemberrelationresponse.md) |             | \[optional] |
| **employee**               | [**EmployeeSimpleResponse**](employeesimpleresponse.md)             |             | \[optional] |
| **place\_of\_birth**       | [**PlaceOfBirthResponse**](placeofbirthresponse.md)                 |             | \[optional] |
| **alive**                  | **bool**                                                            |             | \[optional] |
| **date\_of\_death**        | **str**                                                             |             | \[optional] |
| **marital\_status**        | **object**                                                          |             | \[optional] |
| **marriage\_date**         | **str**                                                             |             | \[optional] |
| **religion**               | [**ReligionResponse**](religionresponse.md)                         |             | \[optional] |
| **education\_level**       | [**EducationLevelResponse**](educationlevelresponse.md)             |             | \[optional] |
| **job**                    | **str**                                                             |             | \[optional] |
| **mobile\_phone**          | **str**                                                             |             | \[optional] |
| **description**            | **str**                                                             |             | \[optional] |
| **family**                 | [**FamilyApprovalResponse**](familyapprovalresponse.md)             |             | \[optional] |
| **approval\_status**       | **str**                                                             |             | \[optional] |
| **rejection\_reason**      | **str**                                                             |             | \[optional] |

## Example

```python
from catapa import FamilyApprovalListItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyApprovalListItemResponse from a JSON string
family_approval_list_item_response_instance = FamilyApprovalListItemResponse.from_json(json)
# print the JSON string representation of the object
print(FamilyApprovalListItemResponse.to_json())

# convert the object into a dict
family_approval_list_item_response_dict = family_approval_list_item_response_instance.to_dict()
# create an instance of FamilyApprovalListItemResponse from a dict
family_approval_list_item_response_from_dict = FamilyApprovalListItemResponse.from_dict(family_approval_list_item_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
