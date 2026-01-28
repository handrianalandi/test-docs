# UpdateBankAccountConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee** | [**IdRequest**](IdRequest.md) |  | 
**effective_date** | **date** | YYYY-MM-DD | 
**payment_method** | **str** |  | 
**distribution_method** | **str** |  | 
**bank_accounts** | [**List[BankAccountConfigurationRequest]**](BankAccountConfigurationRequest.md) |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



