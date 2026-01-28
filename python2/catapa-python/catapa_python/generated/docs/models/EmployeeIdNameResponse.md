# EmployeeIdNameResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 

## Example

```python
from catapa import EmployeeIdNameResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeIdNameResponse from a JSON string
employee_id_name_response_instance = EmployeeIdNameResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeIdNameResponse.to_json())

# convert the object into a dict
employee_id_name_response_dict = employee_id_name_response_instance.to_dict()
# create an instance of EmployeeIdNameResponse from a dict
employee_id_name_response_from_dict = EmployeeIdNameResponse.from_dict(employee_id_name_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



