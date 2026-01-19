# BankAccountConfigurationResponse

## Properties

| Name                       | Type                                                                                    | Description | Notes       |
| -------------------------- | --------------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**                     | **str**                                                                                 |             | \[optional] |
| **employee**               | [**EmployeeResponse**](employeeresponse.md)                                             |             | \[optional] |
| **payment\_method**        | **str**                                                                                 |             | \[optional] |
| **updated\_date**          | **int**                                                                                 |             | \[optional] |
| **effective\_date**        | **date**                                                                                | YYYY-MM-DD  | \[optional] |
| **distribution\_method**   | **str**                                                                                 |             | \[optional] |
| **default\_bank\_account** | [**BankAccountResponse**](bankaccountresponse.md)                                       |             | \[optional] |
| **bank\_accounts**         | [**List\[BankAccountResponse\]**](bankaccountresponse.md)                               |             | \[optional] |
| **source**                 | [**BankAccountConfigurationResponseSource**](bankaccountconfigurationresponsesource.md) |             | \[optional] |
| **approval\_status**       | **str**                                                                                 |             | \[optional] |

## Example

```python
from catapa import BankAccountConfigurationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BankAccountConfigurationResponse from a JSON string
bank_account_configuration_response_instance = BankAccountConfigurationResponse.from_json(json)
# print the JSON string representation of the object
print(BankAccountConfigurationResponse.to_json())

# convert the object into a dict
bank_account_configuration_response_dict = bank_account_configuration_response_instance.to_dict()
# create an instance of BankAccountConfigurationResponse from a dict
bank_account_configuration_response_from_dict = BankAccountConfigurationResponse.from_dict(bank_account_configuration_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
