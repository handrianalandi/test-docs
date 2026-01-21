# FamilyHistoricalListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[FamilyHistoricalResponse]**](FamilyHistoricalResponse.md) |  | [optional] 

## Example

```python
from catapa import FamilyHistoricalListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyHistoricalListResponse from a JSON string
family_historical_list_response_instance = FamilyHistoricalListResponse.from_json(json)
# print the JSON string representation of the object
print(FamilyHistoricalListResponse.to_json())

# convert the object into a dict
family_historical_list_response_dict = family_historical_list_response_instance.to_dict()
# create an instance of FamilyHistoricalListResponse from a dict
family_historical_list_response_from_dict = FamilyHistoricalListResponse.from_dict(family_historical_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



