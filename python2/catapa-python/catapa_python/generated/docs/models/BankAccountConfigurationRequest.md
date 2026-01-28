# BankAccountConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**company_bank_account** | [**IdRequest**](IdRequest.md) |  | 
**bank_id** | **str** |  | 
**bank_branch_id** | **str** |  | 
**account_number** | **str** | Numeric | 
**account_name** | **str** |  | 
**beneficiary_id** | **str** |  | 
**priority** | **float** |  | 
**currency** | [**IdRequest**](IdRequest.md) |  | 
**percentage** | **float** |  | 
**amount** | **float** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



