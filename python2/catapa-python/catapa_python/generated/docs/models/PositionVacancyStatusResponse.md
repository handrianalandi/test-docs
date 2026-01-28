# PositionVacancyStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**effective_date** | **str** |  | 
**vacancy_status** | **str** |  | 
**position** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



