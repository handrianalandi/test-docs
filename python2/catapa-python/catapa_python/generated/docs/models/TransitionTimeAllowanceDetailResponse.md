# TransitionTimeAllowanceDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **float** |  | [optional] 
**var_date** | **str** |  | [optional] 
**salary_decree_number** | **str** |  | [optional] 
**salary_template_detail_id** | **str** |  | [optional] 

## Example

```python
from catapa import TransitionTimeAllowanceDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TransitionTimeAllowanceDetailResponse from a JSON string
transition_time_allowance_detail_response_instance = TransitionTimeAllowanceDetailResponse.from_json(json)
# print the JSON string representation of the object
print(TransitionTimeAllowanceDetailResponse.to_json())

# convert the object into a dict
transition_time_allowance_detail_response_dict = transition_time_allowance_detail_response_instance.to_dict()
# create an instance of TransitionTimeAllowanceDetailResponse from a dict
transition_time_allowance_detail_response_from_dict = TransitionTimeAllowanceDetailResponse.from_dict(transition_time_allowance_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



