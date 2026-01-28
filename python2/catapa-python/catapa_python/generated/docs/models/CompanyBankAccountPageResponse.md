# CompanyBankAccountPageResponse


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
**content** | [**List[CompanyBankAccountResponse]**](CompanyBankAccountResponse.md) |  | 

## Example

```python
from catapa import CompanyBankAccountPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CompanyBankAccountPageResponse from a JSON string
company_bank_account_page_response_instance = CompanyBankAccountPageResponse.from_json(json)
# print the JSON string representation of the object
print(CompanyBankAccountPageResponse.to_json())

# convert the object into a dict
company_bank_account_page_response_dict = company_bank_account_page_response_instance.to_dict()
# create an instance of CompanyBankAccountPageResponse from a dict
company_bank_account_page_response_from_dict = CompanyBankAccountPageResponse.from_dict(company_bank_account_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



