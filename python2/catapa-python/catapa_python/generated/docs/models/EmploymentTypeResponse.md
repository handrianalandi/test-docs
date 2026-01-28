# EmploymentTypeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**employment_group_code** | **str** |  | 
**month_duration** | **int** |  | 
**permanent** | **bool** |  | 

## Example

```python
from catapa import EmploymentTypeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentTypeResponse from a JSON string
employment_type_response_instance = EmploymentTypeResponse.from_json(json)
# print the JSON string representation of the object
print(EmploymentTypeResponse.to_json())

# convert the object into a dict
employment_type_response_dict = employment_type_response_instance.to_dict()
# create an instance of EmploymentTypeResponse from a dict
employment_type_response_from_dict = EmploymentTypeResponse.from_dict(employment_type_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



