# SeverancePlanPageResponse


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
**content** | [**List[SeverancePlanResponse]**](SeverancePlanResponse.md) |  | 

## Example

```python
from catapa import SeverancePlanPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePlanPageResponse from a JSON string
severance_plan_page_response_instance = SeverancePlanPageResponse.from_json(json)
# print the JSON string representation of the object
print(SeverancePlanPageResponse.to_json())

# convert the object into a dict
severance_plan_page_response_dict = severance_plan_page_response_instance.to_dict()
# create an instance of SeverancePlanPageResponse from a dict
severance_plan_page_response_from_dict = SeverancePlanPageResponse.from_dict(severance_plan_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



