# FamilyHistoricalPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[FamilyHistoricalResponse]**](FamilyHistoricalResponse.md) |  | 

## Example

```python
from catapa import FamilyHistoricalPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyHistoricalPageResponse from a JSON string
family_historical_page_response_instance = FamilyHistoricalPageResponse.from_json(json)
# print the JSON string representation of the object
print(FamilyHistoricalPageResponse.to_json())

# convert the object into a dict
family_historical_page_response_dict = family_historical_page_response_instance.to_dict()
# create an instance of FamilyHistoricalPageResponse from a dict
family_historical_page_response_from_dict = FamilyHistoricalPageResponse.from_dict(family_historical_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



