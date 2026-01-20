# SalaryItemAddOnEmployeeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification_number** | **str** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from catapa import SalaryItemAddOnEmployeeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryItemAddOnEmployeeResponse from a JSON string
salary_item_add_on_employee_response_instance = SalaryItemAddOnEmployeeResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryItemAddOnEmployeeResponse.to_json())

# convert the object into a dict
salary_item_add_on_employee_response_dict = salary_item_add_on_employee_response_instance.to_dict()
# create an instance of SalaryItemAddOnEmployeeResponse from a dict
salary_item_add_on_employee_response_from_dict = SalaryItemAddOnEmployeeResponse.from_dict(salary_item_add_on_employee_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



