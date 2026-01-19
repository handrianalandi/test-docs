# UpdateBankAccountConfigurationRequest

## Properties

| Name                     | Type                                                                              | Description | Notes       |
| ------------------------ | --------------------------------------------------------------------------------- | ----------- | ----------- |
| **employee**             | [**IdRequest**](idrequest.md)                                                     |             | \[optional] |
| **effective\_date**      | **date**                                                                          | YYYY-MM-DD  | \[optional] |
| **payment\_method**      | **str**                                                                           |             |             |
| **distribution\_method** | **str**                                                                           |             | \[optional] |
| **bank\_accounts**       | [**List\[BankAccountConfigurationRequest\]**](bankaccountconfigurationrequest.md) |             | \[optional] |

## Example

```python
from catapa import UpdateBankAccountConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateBankAccountConfigurationRequest from a JSON string
update_bank_account_configuration_request_instance = UpdateBankAccountConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateBankAccountConfigurationRequest.to_json())

# convert the object into a dict
update_bank_account_configuration_request_dict = update_bank_account_configuration_request_instance.to_dict()
# create an instance of UpdateBankAccountConfigurationRequest from a dict
update_bank_account_configuration_request_from_dict = UpdateBankAccountConfigurationRequest.from_dict(update_bank_account_configuration_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
