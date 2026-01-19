# BankAccountResponse

## Properties

| Name                 | Type                                                    | Description | Notes       |
| -------------------- | ------------------------------------------------------- | ----------- | ----------- |
| **id**               | **UUID**                                                |             | \[optional] |
| **bank\_id**         | **str**                                                 |             | \[optional] |
| **bank**             | [**BankResponse**](bankresponse.md)                     |             | \[optional] |
| **bank\_branch\_id** | **str**                                                 |             | \[optional] |
| **bank\_branch**     | [**BankBranchResponse**](bankbranchresponse.md)         |             | \[optional] |
| **account\_number**  | **str**                                                 |             | \[optional] |
| **account\_name**    | **str**                                                 |             | \[optional] |
| **beneficiary\_id**  | **str**                                                 |             | \[optional] |
| **priority**         | **float**                                               |             | \[optional] |
| **currency**         | [**CurrencySimpleResponse**](currencysimpleresponse.md) |             | \[optional] |
| **percentage**       | **float**                                               |             | \[optional] |
| **amount**           | **float**                                               |             | \[optional] |

## Example

```python
from catapa import BankAccountResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BankAccountResponse from a JSON string
bank_account_response_instance = BankAccountResponse.from_json(json)
# print the JSON string representation of the object
print(BankAccountResponse.to_json())

# convert the object into a dict
bank_account_response_dict = bank_account_response_instance.to_dict()
# create an instance of BankAccountResponse from a dict
bank_account_response_from_dict = BankAccountResponse.from_dict(bank_account_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
