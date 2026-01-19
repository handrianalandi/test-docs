# TerminationReasonRequest

## Properties

| Name                       | Type                          | Description | Notes                           |
| -------------------------- | ----------------------------- | ----------- | ------------------------------- |
| **name**                   | **str**                       |             |                                 |
| **tax\_reason**            | [**IdRequest**](idrequest.md) |             |                                 |
| **bpjs\_manpower\_reason** | [**IdRequest**](idrequest.md) |             |                                 |
| **reason\_category**       | [**IdRequest**](idrequest.md) |             |                                 |
| **severance**              | **bool**                      |             | \[optional] \[default to False] |

## Example

```python
from catapa import TerminationReasonRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationReasonRequest from a JSON string
termination_reason_request_instance = TerminationReasonRequest.from_json(json)
# print the JSON string representation of the object
print(TerminationReasonRequest.to_json())

# convert the object into a dict
termination_reason_request_dict = termination_reason_request_instance.to_dict()
# create an instance of TerminationReasonRequest from a dict
termination_reason_request_from_dict = TerminationReasonRequest.from_dict(termination_reason_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
