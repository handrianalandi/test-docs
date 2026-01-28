# SalaryItemWithSalaryItemTypeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**salary_item_type** | **str** |  | 

## Example

```python
from catapa import SalaryItemWithSalaryItemTypeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryItemWithSalaryItemTypeResponse from a JSON string
salary_item_with_salary_item_type_response_instance = SalaryItemWithSalaryItemTypeResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryItemWithSalaryItemTypeResponse.to_json())

# convert the object into a dict
salary_item_with_salary_item_type_response_dict = salary_item_with_salary_item_type_response_instance.to_dict()
# create an instance of SalaryItemWithSalaryItemTypeResponse from a dict
salary_item_with_salary_item_type_response_from_dict = SalaryItemWithSalaryItemTypeResponse.from_dict(salary_item_with_salary_item_type_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



