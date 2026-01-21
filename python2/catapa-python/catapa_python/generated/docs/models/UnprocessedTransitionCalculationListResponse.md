# UnprocessedTransitionCalculationListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[UnprocessedTransitionCalculationResponse]**](UnprocessedTransitionCalculationResponse.md) |  | [optional] 

## Example

```python
from catapa import UnprocessedTransitionCalculationListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UnprocessedTransitionCalculationListResponse from a JSON string
unprocessed_transition_calculation_list_response_instance = UnprocessedTransitionCalculationListResponse.from_json(json)
# print the JSON string representation of the object
print(UnprocessedTransitionCalculationListResponse.to_json())

# convert the object into a dict
unprocessed_transition_calculation_list_response_dict = unprocessed_transition_calculation_list_response_instance.to_dict()
# create an instance of UnprocessedTransitionCalculationListResponse from a dict
unprocessed_transition_calculation_list_response_from_dict = UnprocessedTransitionCalculationListResponse.from_dict(unprocessed_transition_calculation_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



