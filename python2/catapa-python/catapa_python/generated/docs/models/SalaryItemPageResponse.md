# SalaryItemPageResponse


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
**content** | [**List[SalaryItemResponse]**](SalaryItemResponse.md) |  | 

## Example

```python
from catapa import SalaryItemPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryItemPageResponse from a JSON string
salary_item_page_response_instance = SalaryItemPageResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryItemPageResponse.to_json())

# convert the object into a dict
salary_item_page_response_dict = salary_item_page_response_instance.to_dict()
# create an instance of SalaryItemPageResponse from a dict
salary_item_page_response_from_dict = SalaryItemPageResponse.from_dict(salary_item_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



