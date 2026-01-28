# EmploymentTypeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**employment_group_code** | **str** |  | 
**month_duration** | **int** |  | 
**permanent** | **bool** |  | [default to False]

## Example

```python
from catapa import EmploymentTypeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentTypeRequest from a JSON string
employment_type_request_instance = EmploymentTypeRequest.from_json(json)
# print the JSON string representation of the object
print(EmploymentTypeRequest.to_json())

# convert the object into a dict
employment_type_request_dict = employment_type_request_instance.to_dict()
# create an instance of EmploymentTypeRequest from a dict
employment_type_request_from_dict = EmploymentTypeRequest.from_dict(employment_type_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



