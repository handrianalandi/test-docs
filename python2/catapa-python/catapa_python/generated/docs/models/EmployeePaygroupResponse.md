# EmployeePaygroupResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**updated_date** | **int** |  | 
**employee** | [**EmployeeResponse**](EmployeeResponse.md) |  | 
**paygroup** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**effective_date** | **date** |  | 

## Example

```python
from catapa import EmployeePaygroupResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeePaygroupResponse from a JSON string
employee_paygroup_response_instance = EmployeePaygroupResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeePaygroupResponse.to_json())

# convert the object into a dict
employee_paygroup_response_dict = employee_paygroup_response_instance.to_dict()
# create an instance of EmployeePaygroupResponse from a dict
employee_paygroup_response_from_dict = EmployeePaygroupResponse.from_dict(employee_paygroup_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



