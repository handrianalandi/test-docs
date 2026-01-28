# EmployeeWorkdayConfigurationPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[EmployeeWorkdayConfigurationResponse]**](EmployeeWorkdayConfigurationResponse.md) |  | 

## Example

```python
from catapa import EmployeeWorkdayConfigurationPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeWorkdayConfigurationPageResponse from a JSON string
employee_workday_configuration_page_response_instance = EmployeeWorkdayConfigurationPageResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeWorkdayConfigurationPageResponse.to_json())

# convert the object into a dict
employee_workday_configuration_page_response_dict = employee_workday_configuration_page_response_instance.to_dict()
# create an instance of EmployeeWorkdayConfigurationPageResponse from a dict
employee_workday_configuration_page_response_from_dict = EmployeeWorkdayConfigurationPageResponse.from_dict(employee_workday_configuration_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



