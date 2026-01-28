# EmploymentDataPositionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**assigned** | **bool** |  | 
**effective_date** | **str** |  | 
**end_date** | **str** |  | 
**max_employees** | **int** |  | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



