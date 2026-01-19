# FamilyApprovalRequest

## Properties

| Name                       | Type                                              | Description                                                                                                                                                                 | Notes                          |
| -------------------------- | ------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------ |
| **name**                   | **str**                                           |                                                                                                                                                                             |                                |
| **gender**                 | **str**                                           |                                                                                                                                                                             |                                |
| **date\_of\_birth**        | **date**                                          | YYYY-MM-DD                                                                                                                                                                  | \[optional]                    |
| **identity\_card\_number** | **str**                                           |                                                                                                                                                                             | \[optional]                    |
| **family\_relation**       | [**IdRequest**](idrequest.md)                     |                                                                                                                                                                             |                                |
| **place\_of\_birth**       | [**PlaceOfBirthRequest**](placeofbirthrequest.md) |                                                                                                                                                                             | \[optional]                    |
| **alive**                  | **bool**                                          |                                                                                                                                                                             | \[optional] \[default to True] |
| **date\_of\_death**        | **date**                                          | If left \<b>null\</b> and the individual is marked as \<b>not alive\</b>, the system will automatically set the date of death to the default value of \`December 31, 9999\` | \[optional]                    |
| **marital\_status**        | **str**                                           |                                                                                                                                                                             | \[optional]                    |
| **marriage\_date**         | **date**                                          | YYYY-MM-DD                                                                                                                                                                  | \[optional]                    |
| **religion**               | **object**                                        |                                                                                                                                                                             | \[optional]                    |
| **education\_level**       | **object**                                        |                                                                                                                                                                             | \[optional]                    |
| **job**                    | **str**                                           | Alphanumeric with space, e.g. \`Software Engineer 1\`                                                                                                                       | \[optional]                    |
| **mobile\_phone**          | **str**                                           | e.g. \`+6281234567890\`                                                                                                                                                     | \[optional]                    |
| **description**            | **str**                                           |                                                                                                                                                                             | \[optional]                    |

## Example

```python
from catapa import FamilyApprovalRequest

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyApprovalRequest from a JSON string
family_approval_request_instance = FamilyApprovalRequest.from_json(json)
# print the JSON string representation of the object
print(FamilyApprovalRequest.to_json())

# convert the object into a dict
family_approval_request_dict = family_approval_request_instance.to_dict()
# create an instance of FamilyApprovalRequest from a dict
family_approval_request_from_dict = FamilyApprovalRequest.from_dict(family_approval_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
