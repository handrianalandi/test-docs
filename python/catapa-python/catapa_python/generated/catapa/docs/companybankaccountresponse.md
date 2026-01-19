# CompanyBankAccountResponse

## Properties

| Name                | Type                                            | Description | Notes       |
| ------------------- | ----------------------------------------------- | ----------- | ----------- |
| **id**              | **UUID**                                        |             | \[optional] |
| **name**            | **str**                                         |             | \[optional] |
| **company\_code**   | **str**                                         |             | \[optional] |
| **account\_number** | **str**                                         |             | \[optional] |
| **bank\_branch**    | [**BankBranchResponse**](bankbranchresponse.md) |             | \[optional] |
| **currency**        | [**CurrencyResponse**](currencyresponse.md)     |             | \[optional] |

## Example

```python
from catapa import CompanyBankAccountResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CompanyBankAccountResponse from a JSON string
company_bank_account_response_instance = CompanyBankAccountResponse.from_json(json)
# print the JSON string representation of the object
print(CompanyBankAccountResponse.to_json())

# convert the object into a dict
company_bank_account_response_dict = company_bank_account_response_instance.to_dict()
# create an instance of CompanyBankAccountResponse from a dict
company_bank_account_response_from_dict = CompanyBankAccountResponse.from_dict(company_bank_account_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
