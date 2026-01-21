# BankAccountConfigurationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**employee** | [**EmployeeResponse**](EmployeeResponse.md) |  | [optional] 
**payment_method** | **str** |  | [optional] 
**updated_date** | **int** |  | [optional] 
**effective_date** | **date** | YYYY-MM-DD | [optional] 
**distribution_method** | **str** |  | [optional] 
**default_bank_account** | [**BankAccountResponse**](BankAccountResponse.md) |  | [optional] 
**bank_accounts** | [**List[BankAccountResponse]**](BankAccountResponse.md) |  | [optional] 
**source** | [**BankAccountConfigurationResponseSource**](BankAccountConfigurationResponseSource.md) |  | [optional] 
**approval_status** | **str** |  | [optional] 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



