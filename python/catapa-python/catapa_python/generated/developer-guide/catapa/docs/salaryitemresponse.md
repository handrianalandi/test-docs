# SalaryItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**payslip_name** | **str** |  | [optional] 
**salary_item_category** | **str** |  | [optional] 
**pph21_method** | **str** |  | [optional] 
**pph21_item** | **str** |  | [optional] 

## Example

```python
from catapa import SalaryItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryItemResponse from a JSON string
salary_item_response_instance = SalaryItemResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryItemResponse.to_json())

# convert the object into a dict
salary_item_response_dict = salary_item_response_instance.to_dict()
# create an instance of SalaryItemResponse from a dict
salary_item_response_from_dict = SalaryItemResponse.from_dict(salary_item_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



