# ProcessableTimeAllowanceTransitionListResponse

## Properties

| Name        | Type                                                                                                    | Description | Notes       |
| ----------- | ------------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **content** | [**List\[ProcessableTimeAllowanceTransitionResponse\]**](processabletimeallowancetransitionresponse.md) |             | \[optional] |

## Example

```python
from catapa import ProcessableTimeAllowanceTransitionListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessableTimeAllowanceTransitionListResponse from a JSON string
processable_time_allowance_transition_list_response_instance = ProcessableTimeAllowanceTransitionListResponse.from_json(json)
# print the JSON string representation of the object
print(ProcessableTimeAllowanceTransitionListResponse.to_json())

# convert the object into a dict
processable_time_allowance_transition_list_response_dict = processable_time_allowance_transition_list_response_instance.to_dict()
# create an instance of ProcessableTimeAllowanceTransitionListResponse from a dict
processable_time_allowance_transition_list_response_from_dict = ProcessableTimeAllowanceTransitionListResponse.from_dict(processable_time_allowance_transition_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
