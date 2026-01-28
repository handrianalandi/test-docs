# CurrencyPageResponse


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
**content** | [**List[CurrencyResponse]**](CurrencyResponse.md) |  | 

## Example

```python
from catapa import CurrencyPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CurrencyPageResponse from a JSON string
currency_page_response_instance = CurrencyPageResponse.from_json(json)
# print the JSON string representation of the object
print(CurrencyPageResponse.to_json())

# convert the object into a dict
currency_page_response_dict = currency_page_response_instance.to_dict()
# create an instance of CurrencyPageResponse from a dict
currency_page_response_from_dict = CurrencyPageResponse.from_dict(currency_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



