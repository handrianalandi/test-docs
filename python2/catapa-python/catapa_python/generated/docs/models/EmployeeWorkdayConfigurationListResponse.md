# EmployeeWorkdayConfigurationListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[EmployeeWorkdayConfigurationResponse]**](EmployeeWorkdayConfigurationResponse.md) |  | [optional] 

## Example

```python
from catapa import EmployeeWorkdayConfigurationListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeWorkdayConfigurationListResponse from a JSON string
employee_workday_configuration_list_response_instance = EmployeeWorkdayConfigurationListResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeWorkdayConfigurationListResponse.to_json())

# convert the object into a dict
employee_workday_configuration_list_response_dict = employee_workday_configuration_list_response_instance.to_dict()
# create an instance of EmployeeWorkdayConfigurationListResponse from a dict
employee_workday_configuration_list_response_from_dict = EmployeeWorkdayConfigurationListResponse.from_dict(employee_workday_configuration_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



