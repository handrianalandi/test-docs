# SalaryCalculationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cost_center_code** | **str** |  | 
**daily_workday_end_date** | **str** |  | 
**daily_workday_start_date** | **str** |  | 
**employee_id** | **str** |  | 
**employee_identification_number** | **str** |  | 
**employee_name** | **str** |  | 
**employee_workday** | **float** |  | 
**id** | **str** |  | 
**location_group_code** | **str** |  | 
**normal_workday** | **float** |  | 
**previous_period_employee_workday** | **float** |  | 
**previous_period_normal_workday** | **float** |  | 

## Example

```python
from catapa import SalaryCalculationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryCalculationResponse from a JSON string
salary_calculation_response_instance = SalaryCalculationResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryCalculationResponse.to_json())

# convert the object into a dict
salary_calculation_response_dict = salary_calculation_response_instance.to_dict()
# create an instance of SalaryCalculationResponse from a dict
salary_calculation_response_from_dict = SalaryCalculationResponse.from_dict(salary_calculation_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



