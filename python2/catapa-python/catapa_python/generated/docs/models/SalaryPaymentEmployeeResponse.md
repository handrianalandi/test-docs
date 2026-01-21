# SalaryPaymentEmployeeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**identification_number** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**employment_status** | [**SalaryPaymentEmploymentStatusResponse**](SalaryPaymentEmploymentStatusResponse.md) |  | [optional] 

## Example

```python
from catapa import SalaryPaymentEmployeeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentEmployeeResponse from a JSON string
salary_payment_employee_response_instance = SalaryPaymentEmployeeResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentEmployeeResponse.to_json())

# convert the object into a dict
salary_payment_employee_response_dict = salary_payment_employee_response_instance.to_dict()
# create an instance of SalaryPaymentEmployeeResponse from a dict
salary_payment_employee_response_from_dict = SalaryPaymentEmployeeResponse.from_dict(salary_payment_employee_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



