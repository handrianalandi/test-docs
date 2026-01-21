# EmployeeWorkdayConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date** | **str** |  | 
**end_date** | **str** |  | 
**shift_pattern_template** | [**IdRequest**](IdRequest.md) |  | 
**start_sequence** | **float** |  | 
**include_holiday** | **bool** |  | 
**include_missing_shift** | **bool** |  | 
**employee** | [**IdRequest**](IdRequest.md) |  | 

## Example

```python
from catapa import EmployeeWorkdayConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeWorkdayConfigurationRequest from a JSON string
employee_workday_configuration_request_instance = EmployeeWorkdayConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(EmployeeWorkdayConfigurationRequest.to_json())

# convert the object into a dict
employee_workday_configuration_request_dict = employee_workday_configuration_request_instance.to_dict()
# create an instance of EmployeeWorkdayConfigurationRequest from a dict
employee_workday_configuration_request_from_dict = EmployeeWorkdayConfigurationRequest.from_dict(employee_workday_configuration_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



