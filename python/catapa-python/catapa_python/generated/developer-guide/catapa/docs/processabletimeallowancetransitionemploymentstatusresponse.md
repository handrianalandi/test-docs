# ProcessableTimeAllowanceTransitionEmploymentStatusResponse

## Properties

| Name             | Type                                | Description | Notes       |
| ---------------- | ----------------------------------- | ----------- | ----------- |
| **organization** | [**NameResponse**](nameresponse.md) |             | \[optional] |
| **job\_title**   | [**NameResponse**](nameresponse.md) |             | \[optional] |

## Example

```python
from catapa import ProcessableTimeAllowanceTransitionEmploymentStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessableTimeAllowanceTransitionEmploymentStatusResponse from a JSON string
processable_time_allowance_transition_employment_status_response_instance = ProcessableTimeAllowanceTransitionEmploymentStatusResponse.from_json(json)
# print the JSON string representation of the object
print(ProcessableTimeAllowanceTransitionEmploymentStatusResponse.to_json())

# convert the object into a dict
processable_time_allowance_transition_employment_status_response_dict = processable_time_allowance_transition_employment_status_response_instance.to_dict()
# create an instance of ProcessableTimeAllowanceTransitionEmploymentStatusResponse from a dict
processable_time_allowance_transition_employment_status_response_from_dict = ProcessableTimeAllowanceTransitionEmploymentStatusResponse.from_dict(processable_time_allowance_transition_employment_status_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
