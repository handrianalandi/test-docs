# SalaryItemListResponse


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
**content** | [**List[SalaryItemResponse]**](SalaryItemResponse.md) |  | [optional] 

## Example

```python
from catapa import SalaryItemListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryItemListResponse from a JSON string
salary_item_list_response_instance = SalaryItemListResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryItemListResponse.to_json())

# convert the object into a dict
salary_item_list_response_dict = salary_item_list_response_instance.to_dict()
# create an instance of SalaryItemListResponse from a dict
salary_item_list_response_from_dict = SalaryItemListResponse.from_dict(salary_item_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



