# EmployeeIdentificationNumberResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification_number** | **str** |  | [optional] 

## Example

```python
from catapa import EmployeeIdentificationNumberResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeIdentificationNumberResponse from a JSON string
employee_identification_number_response_instance = EmployeeIdentificationNumberResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeIdentificationNumberResponse.to_json())

# convert the object into a dict
employee_identification_number_response_dict = employee_identification_number_response_instance.to_dict()
# create an instance of EmployeeIdentificationNumberResponse from a dict
employee_identification_number_response_from_dict = EmployeeIdentificationNumberResponse.from_dict(employee_identification_number_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



