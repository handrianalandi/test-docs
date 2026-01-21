# SalaryItemResponseWithCategory


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**salary_item_category** | **str** |  | [optional] 
**salary_item_type** | **str** |  | [optional] 

## Example

```python
from catapa import SalaryItemResponseWithCategory

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryItemResponseWithCategory from a JSON string
salary_item_response_with_category_instance = SalaryItemResponseWithCategory.from_json(json)
# print the JSON string representation of the object
print(SalaryItemResponseWithCategory.to_json())

# convert the object into a dict
salary_item_response_with_category_dict = salary_item_response_with_category_instance.to_dict()
# create an instance of SalaryItemResponseWithCategory from a dict
salary_item_response_with_category_from_dict = SalaryItemResponseWithCategory.from_dict(salary_item_response_with_category_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



