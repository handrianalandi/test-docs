# TransitionCalculationCountResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**processed_count** | **float** |  | 
**unprocessed_count** | **float** |  | 

## Example

```python
from catapa import TransitionCalculationCountResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TransitionCalculationCountResponse from a JSON string
transition_calculation_count_response_instance = TransitionCalculationCountResponse.from_json(json)
# print the JSON string representation of the object
print(TransitionCalculationCountResponse.to_json())

# convert the object into a dict
transition_calculation_count_response_dict = transition_calculation_count_response_instance.to_dict()
# create an instance of TransitionCalculationCountResponse from a dict
transition_calculation_count_response_from_dict = TransitionCalculationCountResponse.from_dict(transition_calculation_count_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



