# AdditionalAssignmentApprovaleSubLocationResponse

## Properties

| Name         | Type                                            | Description | Notes       |
| ------------ | ----------------------------------------------- | ----------- | ----------- |
| **id**       | **str**                                         |             | \[optional] |
| **code**     | **str**                                         |             | \[optional] |
| **name**     | **str**                                         |             | \[optional] |
| **location** | [**IdCodeNameResponse**](idcodenameresponse.md) |             | \[optional] |

## Example

```python
from catapa import AdditionalAssignmentApprovaleSubLocationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalAssignmentApprovaleSubLocationResponse from a JSON string
additional_assignment_approvale_sub_location_response_instance = AdditionalAssignmentApprovaleSubLocationResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalAssignmentApprovaleSubLocationResponse.to_json())

# convert the object into a dict
additional_assignment_approvale_sub_location_response_dict = additional_assignment_approvale_sub_location_response_instance.to_dict()
# create an instance of AdditionalAssignmentApprovaleSubLocationResponse from a dict
additional_assignment_approvale_sub_location_response_from_dict = AdditionalAssignmentApprovaleSubLocationResponse.from_dict(additional_assignment_approvale_sub_location_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
