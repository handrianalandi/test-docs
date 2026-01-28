# FamilyHistoricalResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**gender** | **str** |  | 
**date_of_birth** | **date** | YYYY-MM-DD | 
**family_relation** | [**FamilyMemberRelationResponse**](FamilyMemberRelationResponse.md) |  | 
**effective_date** | **date** | YYYY-MM-DD | 
**end_date** | **date** | YYYY-MM-DD | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



