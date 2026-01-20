# WorkgroupWorkdayConfigurationListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[WorkgroupWorkdayConfigurationResponse]**](WorkgroupWorkdayConfigurationResponse.md) |  | [optional] 

## Example

```python
from catapa import WorkgroupWorkdayConfigurationListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkgroupWorkdayConfigurationListResponse from a JSON string
workgroup_workday_configuration_list_response_instance = WorkgroupWorkdayConfigurationListResponse.from_json(json)
# print the JSON string representation of the object
print(WorkgroupWorkdayConfigurationListResponse.to_json())

# convert the object into a dict
workgroup_workday_configuration_list_response_dict = workgroup_workday_configuration_list_response_instance.to_dict()
# create an instance of WorkgroupWorkdayConfigurationListResponse from a dict
workgroup_workday_configuration_list_response_from_dict = WorkgroupWorkdayConfigurationListResponse.from_dict(workgroup_workday_configuration_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



