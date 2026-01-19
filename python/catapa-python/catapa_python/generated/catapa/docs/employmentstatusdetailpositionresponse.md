# EmploymentStatusDetailPositionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**effective_date** | **date** | YYYY-MM-DD | [optional] 
**end_date** | **date** | YYYY-MM-DD | [optional] 

## Example

```python
from catapa import EmploymentStatusDetailPositionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentStatusDetailPositionResponse from a JSON string
employment_status_detail_position_response_instance = EmploymentStatusDetailPositionResponse.from_json(json)
# print the JSON string representation of the object
print(EmploymentStatusDetailPositionResponse.to_json())

# convert the object into a dict
employment_status_detail_position_response_dict = employment_status_detail_position_response_instance.to_dict()
# create an instance of EmploymentStatusDetailPositionResponse from a dict
employment_status_detail_position_response_from_dict = EmploymentStatusDetailPositionResponse.from_dict(employment_status_detail_position_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



