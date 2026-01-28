# EmploymentStatusTypeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**default_data** | **bool** |  | 
**employment_status_number_type** | **str** |  | 
**name** | **str** |  | 

## Example

```python
from catapa import EmploymentStatusTypeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentStatusTypeResponse from a JSON string
employment_status_type_response_instance = EmploymentStatusTypeResponse.from_json(json)
# print the JSON string representation of the object
print(EmploymentStatusTypeResponse.to_json())

# convert the object into a dict
employment_status_type_response_dict = employment_status_type_response_instance.to_dict()
# create an instance of EmploymentStatusTypeResponse from a dict
employment_status_type_response_from_dict = EmploymentStatusTypeResponse.from_dict(employment_status_type_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



