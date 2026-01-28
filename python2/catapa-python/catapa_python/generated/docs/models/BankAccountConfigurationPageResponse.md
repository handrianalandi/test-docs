# BankAccountConfigurationPageResponse


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
**content** | [**List[BankAccountConfigurationResponse]**](BankAccountConfigurationResponse.md) |  | 

## Example

```python
from catapa import BankAccountConfigurationPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BankAccountConfigurationPageResponse from a JSON string
bank_account_configuration_page_response_instance = BankAccountConfigurationPageResponse.from_json(json)
# print the JSON string representation of the object
print(BankAccountConfigurationPageResponse.to_json())

# convert the object into a dict
bank_account_configuration_page_response_dict = bank_account_configuration_page_response_instance.to_dict()
# create an instance of BankAccountConfigurationPageResponse from a dict
bank_account_configuration_page_response_from_dict = BankAccountConfigurationPageResponse.from_dict(bank_account_configuration_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



