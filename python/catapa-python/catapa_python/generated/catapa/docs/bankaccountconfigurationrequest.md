# BankAccountConfigurationRequest

## Properties

| Name                       | Type                          | Description | Notes       |
| -------------------------- | ----------------------------- | ----------- | ----------- |
| **id**                     | **str**                       |             | \[optional] |
| **company\_bank\_account** | [**IdRequest**](idrequest.md) |             | \[optional] |
| **bank\_id**               | **str**                       |             |             |
| **bank\_branch\_id**       | **str**                       |             | \[optional] |
| **account\_number**        | **str**                       | Numeric     |             |
| **account\_name**          | **str**                       |             |             |
| **beneficiary\_id**        | **str**                       |             | \[optional] |
| **priority**               | **float**                     |             |             |
| **currency**               | [**IdRequest**](idrequest.md) |             |             |
| **percentage**             | **float**                     |             |             |
| **amount**                 | **float**                     |             |             |

## Example

```python
from catapa import BankAccountConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BankAccountConfigurationRequest from a JSON string
bank_account_configuration_request_instance = BankAccountConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(BankAccountConfigurationRequest.to_json())

# convert the object into a dict
bank_account_configuration_request_dict = bank_account_configuration_request_instance.to_dict()
# create an instance of BankAccountConfigurationRequest from a dict
bank_account_configuration_request_from_dict = BankAccountConfigurationRequest.from_dict(bank_account_configuration_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
