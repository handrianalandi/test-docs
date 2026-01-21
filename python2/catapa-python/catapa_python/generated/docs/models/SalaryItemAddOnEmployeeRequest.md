# SalaryItemAddOnEmployeeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification_number** | **str** |  | 

## Example

```python
from catapa import SalaryItemAddOnEmployeeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryItemAddOnEmployeeRequest from a JSON string
salary_item_add_on_employee_request_instance = SalaryItemAddOnEmployeeRequest.from_json(json)
# print the JSON string representation of the object
print(SalaryItemAddOnEmployeeRequest.to_json())

# convert the object into a dict
salary_item_add_on_employee_request_dict = salary_item_add_on_employee_request_instance.to_dict()
# create an instance of SalaryItemAddOnEmployeeRequest from a dict
salary_item_add_on_employee_request_from_dict = SalaryItemAddOnEmployeeRequest.from_dict(salary_item_add_on_employee_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



