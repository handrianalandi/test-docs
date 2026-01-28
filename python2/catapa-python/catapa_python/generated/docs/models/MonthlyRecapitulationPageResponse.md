# MonthlyRecapitulationPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[MonthlyRecapitulationItemResponse]**](MonthlyRecapitulationItemResponse.md) |  | 

## Example

```python
from catapa import MonthlyRecapitulationPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyRecapitulationPageResponse from a JSON string
monthly_recapitulation_page_response_instance = MonthlyRecapitulationPageResponse.from_json(json)
# print the JSON string representation of the object
print(MonthlyRecapitulationPageResponse.to_json())

# convert the object into a dict
monthly_recapitulation_page_response_dict = monthly_recapitulation_page_response_instance.to_dict()
# create an instance of MonthlyRecapitulationPageResponse from a dict
monthly_recapitulation_page_response_from_dict = MonthlyRecapitulationPageResponse.from_dict(monthly_recapitulation_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



