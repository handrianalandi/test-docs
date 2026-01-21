# SalaryItemSimpleResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from catapa import SalaryItemSimpleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryItemSimpleResponse from a JSON string
salary_item_simple_response_instance = SalaryItemSimpleResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryItemSimpleResponse.to_json())

# convert the object into a dict
salary_item_simple_response_dict = salary_item_simple_response_instance.to_dict()
# create an instance of SalaryItemSimpleResponse from a dict
salary_item_simple_response_from_dict = SalaryItemSimpleResponse.from_dict(salary_item_simple_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



