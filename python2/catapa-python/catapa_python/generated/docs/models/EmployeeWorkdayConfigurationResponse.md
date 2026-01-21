# EmployeeWorkdayConfigurationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**start_date** | **str** |  | [optional] 
**end_date** | **str** |  | [optional] 
**shift_pattern_template** | [**ShiftPatternTemplateSimpleResponse**](ShiftPatternTemplateSimpleResponse.md) |  | [optional] 
**workday_configuration_details** | [**List[WorkdayConfigurationDetailResponse]**](WorkdayConfigurationDetailResponse.md) |  | [optional] 
**start_sequence** | **float** |  | [optional] 
**start_shift** | [**ShiftResponse**](ShiftResponse.md) |  | [optional] 
**include_holiday** | **bool** |  | [optional] 
**include_missing_shift** | **bool** |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 

## Example

```python
from catapa import EmployeeWorkdayConfigurationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeWorkdayConfigurationResponse from a JSON string
employee_workday_configuration_response_instance = EmployeeWorkdayConfigurationResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeWorkdayConfigurationResponse.to_json())

# convert the object into a dict
employee_workday_configuration_response_dict = employee_workday_configuration_response_instance.to_dict()
# create an instance of EmployeeWorkdayConfigurationResponse from a dict
employee_workday_configuration_response_from_dict = EmployeeWorkdayConfigurationResponse.from_dict(employee_workday_configuration_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



