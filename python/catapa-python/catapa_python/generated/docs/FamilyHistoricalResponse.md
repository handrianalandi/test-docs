# FamilyHistoricalResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**gender** | **str** |  | [optional] 
**date_of_birth** | **date** | YYYY-MM-DD | [optional] 
**family_relation** | [**FamilyMemberRelationResponse**](FamilyMemberRelationResponse.md) |  | [optional] 
**effective_date** | **date** | YYYY-MM-DD | [optional] 
**end_date** | **date** | YYYY-MM-DD | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **float** |  | [optional] 

## Example

```python
from catapa import FamilyHistoricalResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyHistoricalResponse from a JSON string
family_historical_response_instance = FamilyHistoricalResponse.from_json(json)
# print the JSON string representation of the object
print(FamilyHistoricalResponse.to_json())

# convert the object into a dict
family_historical_response_dict = family_historical_response_instance.to_dict()
# create an instance of FamilyHistoricalResponse from a dict
family_historical_response_from_dict = FamilyHistoricalResponse.from_dict(family_historical_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



