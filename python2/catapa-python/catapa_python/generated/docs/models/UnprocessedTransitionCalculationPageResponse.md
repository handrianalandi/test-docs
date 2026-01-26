# UnprocessedTransitionCalculationPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[UnprocessedTransitionCalculationResponse]**](UnprocessedTransitionCalculationResponse.md) |  | [optional] 

## Example

```python
from catapa import UnprocessedTransitionCalculationPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UnprocessedTransitionCalculationPageResponse from a JSON string
unprocessed_transition_calculation_page_response_instance = UnprocessedTransitionCalculationPageResponse.from_json(json)
# print the JSON string representation of the object
print(UnprocessedTransitionCalculationPageResponse.to_json())

# convert the object into a dict
unprocessed_transition_calculation_page_response_dict = unprocessed_transition_calculation_page_response_instance.to_dict()
# create an instance of UnprocessedTransitionCalculationPageResponse from a dict
unprocessed_transition_calculation_page_response_from_dict = UnprocessedTransitionCalculationPageResponse.from_dict(unprocessed_transition_calculation_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



