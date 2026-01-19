# CompanyBankAccountListResponse

## Properties

| Name                     | Type                                                                    | Description | Notes       |
| ------------------------ | ----------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                 |             | \[optional] |
| **last**                 | **bool**                                                                |             | \[optional] |
| **total\_elements**      | **int**                                                                 |             | \[optional] |
| **number\_of\_elements** | **int**                                                                 |             | \[optional] |
| **has\_content**         | **bool**                                                                |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                             |             | \[optional] |
| **first**                | **bool**                                                                |             | \[optional] |
| **size**                 | **int**                                                                 |             | \[optional] |
| **number**               | **int**                                                                 |             | \[optional] |
| **content**              | [**List\[CompanyBankAccountResponse\]**](companybankaccountresponse.md) |             | \[optional] |

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

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
