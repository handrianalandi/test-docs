# TransitionCalculationDetailsAmountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **float** |  | 
**id** | **str** |  | 

## Example

```python
from catapa import TransitionCalculationDetailsAmountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TransitionCalculationDetailsAmountRequest from a JSON string
transition_calculation_details_amount_request_instance = TransitionCalculationDetailsAmountRequest.from_json(json)
# print the JSON string representation of the object
print(TransitionCalculationDetailsAmountRequest.to_json())

# convert the object into a dict
transition_calculation_details_amount_request_dict = transition_calculation_details_amount_request_instance.to_dict()
# create an instance of TransitionCalculationDetailsAmountRequest from a dict
transition_calculation_details_amount_request_from_dict = TransitionCalculationDetailsAmountRequest.from_dict(transition_calculation_details_amount_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



