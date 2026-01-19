# TimeAllowanceDetailsResponse

## Properties

| Name                            | Type                                                                      | Description | Notes       |
| ------------------------------- | ------------------------------------------------------------------------- | ----------- | ----------- |
| **salary\_calculation\_detail** | [**IdResponse**](idresponse.md)                                           |             | \[optional] |
| **time\_allowance\_details**    | [**List\[TimeAllowanceDetailResponse\]**](timeallowancedetailresponse.md) |             | \[optional] |

## Example

```python
from catapa import TimeAllowanceDetailsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TimeAllowanceDetailsResponse from a JSON string
time_allowance_details_response_instance = TimeAllowanceDetailsResponse.from_json(json)
# print the JSON string representation of the object
print(TimeAllowanceDetailsResponse.to_json())

# convert the object into a dict
time_allowance_details_response_dict = time_allowance_details_response_instance.to_dict()
# create an instance of TimeAllowanceDetailsResponse from a dict
time_allowance_details_response_from_dict = TimeAllowanceDetailsResponse.from_dict(time_allowance_details_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
