# EmployeeVariableMetadataListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[EmployeeVariableMetadataResponse]**](EmployeeVariableMetadataResponse.md) |  | [optional] 

## Example

```python
from catapa import EmployeeVariableMetadataListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeVariableMetadataListResponse from a JSON string
employee_variable_metadata_list_response_instance = EmployeeVariableMetadataListResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeVariableMetadataListResponse.to_json())

# convert the object into a dict
employee_variable_metadata_list_response_dict = employee_variable_metadata_list_response_instance.to_dict()
# create an instance of EmployeeVariableMetadataListResponse from a dict
employee_variable_metadata_list_response_from_dict = EmployeeVariableMetadataListResponse.from_dict(employee_variable_metadata_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



