# PositionVacancyStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**vacancy_status** | **str** |  | [optional] 
**position** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **float** |  | [optional] 

## Example

```python
from catapa import PositionVacancyStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionVacancyStatusResponse from a JSON string
position_vacancy_status_response_instance = PositionVacancyStatusResponse.from_json(json)
# print the JSON string representation of the object
print(PositionVacancyStatusResponse.to_json())

# convert the object into a dict
position_vacancy_status_response_dict = position_vacancy_status_response_instance.to_dict()
# create an instance of PositionVacancyStatusResponse from a dict
position_vacancy_status_response_from_dict = PositionVacancyStatusResponse.from_dict(position_vacancy_status_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



