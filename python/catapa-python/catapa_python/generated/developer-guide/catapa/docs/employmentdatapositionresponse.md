# EmploymentDataPositionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**assigned** | **bool** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**end_date** | **str** |  | [optional] 
**max_employees** | **int** |  | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **float** |  | [optional] 

## Example

```python
from catapa import EmploymentDataPositionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentDataPositionResponse from a JSON string
employment_data_position_response_instance = EmploymentDataPositionResponse.from_json(json)
# print the JSON string representation of the object
print(EmploymentDataPositionResponse.to_json())

# convert the object into a dict
employment_data_position_response_dict = employment_data_position_response_instance.to_dict()
# create an instance of EmploymentDataPositionResponse from a dict
employment_data_position_response_from_dict = EmploymentDataPositionResponse.from_dict(employment_data_position_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



