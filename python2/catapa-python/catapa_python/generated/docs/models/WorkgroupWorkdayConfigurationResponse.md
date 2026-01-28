# WorkgroupWorkdayConfigurationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**start_date** | **str** |  | 
**end_date** | **str** |  | 
**shift_pattern_template** | [**ShiftPatternTemplateSimpleResponse**](ShiftPatternTemplateSimpleResponse.md) |  | 
**workday_configuration_details** | [**List[WorkdayConfigurationDetailResponse]**](WorkdayConfigurationDetailResponse.md) |  | 
**start_sequence** | **float** |  | 
**start_shift** | [**ShiftResponse**](ShiftResponse.md) |  | 
**include_holiday** | **bool** |  | 
**workgroup** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 

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



