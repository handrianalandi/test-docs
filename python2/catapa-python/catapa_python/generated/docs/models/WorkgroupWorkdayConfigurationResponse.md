# WorkgroupWorkdayConfigurationResponse


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
**workgroup** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 

## Example

```python
from catapa import WorkgroupWorkdayConfigurationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkgroupWorkdayConfigurationResponse from a JSON string
workgroup_workday_configuration_response_instance = WorkgroupWorkdayConfigurationResponse.from_json(json)
# print the JSON string representation of the object
print(WorkgroupWorkdayConfigurationResponse.to_json())

# convert the object into a dict
workgroup_workday_configuration_response_dict = workgroup_workday_configuration_response_instance.to_dict()
# create an instance of WorkgroupWorkdayConfigurationResponse from a dict
workgroup_workday_configuration_response_from_dict = WorkgroupWorkdayConfigurationResponse.from_dict(workgroup_workday_configuration_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



