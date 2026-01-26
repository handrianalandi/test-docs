# CostCenterPageResponse


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
**content** | [**List[CostCenterListItemResponse]**](CostCenterListItemResponse.md) |  | [optional] 

## Example

```python
from catapa import CostCenterPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CostCenterPageResponse from a JSON string
cost_center_page_response_instance = CostCenterPageResponse.from_json(json)
# print the JSON string representation of the object
print(CostCenterPageResponse.to_json())

# convert the object into a dict
cost_center_page_response_dict = cost_center_page_response_instance.to_dict()
# create an instance of CostCenterPageResponse from a dict
cost_center_page_response_from_dict = CostCenterPageResponse.from_dict(cost_center_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



