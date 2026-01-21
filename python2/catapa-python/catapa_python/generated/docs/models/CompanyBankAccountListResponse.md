# CompanyBankAccountListResponse


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
**content** | [**List[CompanyBankAccountResponse]**](CompanyBankAccountResponse.md) |  | [optional] 

## Example

```python
from catapa import CompanyBankAccountListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CompanyBankAccountListResponse from a JSON string
company_bank_account_list_response_instance = CompanyBankAccountListResponse.from_json(json)
# print the JSON string representation of the object
print(CompanyBankAccountListResponse.to_json())

# convert the object into a dict
company_bank_account_list_response_dict = company_bank_account_list_response_instance.to_dict()
# create an instance of CompanyBankAccountListResponse from a dict
company_bank_account_list_response_from_dict = CompanyBankAccountListResponse.from_dict(company_bank_account_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



