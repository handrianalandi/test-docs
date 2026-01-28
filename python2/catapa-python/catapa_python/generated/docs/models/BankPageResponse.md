# BankPageResponse


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
**content** | [**List[BankResponse]**](BankResponse.md) |  | 

## Example

```python
from catapa import BankPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BankPageResponse from a JSON string
bank_page_response_instance = BankPageResponse.from_json(json)
# print the JSON string representation of the object
print(BankPageResponse.to_json())

# convert the object into a dict
bank_page_response_dict = bank_page_response_instance.to_dict()
# create an instance of BankPageResponse from a dict
bank_page_response_from_dict = BankPageResponse.from_dict(bank_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



