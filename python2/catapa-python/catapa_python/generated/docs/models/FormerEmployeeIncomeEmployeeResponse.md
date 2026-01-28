# FormerEmployeeIncomeEmployeeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Former employee income employee ID | 
**former_employee_income** | [**FormerEmployeeIncomeResponse**](FormerEmployeeIncomeResponse.md) |  | 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | 
**amount** | **float** | Income amount | 
**last_working_date** | **date** | Last working date | 
**payment_date** | **date** | Payment date | 
**payment_method** | **str** | Payment method | 
**total_thp** | **float** | Total take home pay | 
**original_tax** | **float** | Original tax amount | 
**penalty_tax** | **float** | Penalty tax amount | 
**tax_allowance** | **float** | Tax allowance amount | 

## Example

```python
from catapa import FormerEmployeeIncomeEmployeeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FormerEmployeeIncomeEmployeeResponse from a JSON string
former_employee_income_employee_response_instance = FormerEmployeeIncomeEmployeeResponse.from_json(json)
# print the JSON string representation of the object
print(FormerEmployeeIncomeEmployeeResponse.to_json())

# convert the object into a dict
former_employee_income_employee_response_dict = former_employee_income_employee_response_instance.to_dict()
# create an instance of FormerEmployeeIncomeEmployeeResponse from a dict
former_employee_income_employee_response_from_dict = FormerEmployeeIncomeEmployeeResponse.from_dict(former_employee_income_employee_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



