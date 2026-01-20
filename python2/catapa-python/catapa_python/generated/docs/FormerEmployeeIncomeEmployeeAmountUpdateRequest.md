# FormerEmployeeIncomeEmployeeAmountUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Employee income ID | 
**amount** | **float** | Updated amount | 

## Example

```python
from catapa import FormerEmployeeIncomeEmployeeAmountUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of FormerEmployeeIncomeEmployeeAmountUpdateRequest from a JSON string
former_employee_income_employee_amount_update_request_instance = FormerEmployeeIncomeEmployeeAmountUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(FormerEmployeeIncomeEmployeeAmountUpdateRequest.to_json())

# convert the object into a dict
former_employee_income_employee_amount_update_request_dict = former_employee_income_employee_amount_update_request_instance.to_dict()
# create an instance of FormerEmployeeIncomeEmployeeAmountUpdateRequest from a dict
former_employee_income_employee_amount_update_request_from_dict = FormerEmployeeIncomeEmployeeAmountUpdateRequest.from_dict(former_employee_income_employee_amount_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



