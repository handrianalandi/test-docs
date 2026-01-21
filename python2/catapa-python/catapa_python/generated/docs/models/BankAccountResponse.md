# BankAccountResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**bank_id** | **str** |  | [optional] 
**bank** | [**BankResponse**](BankResponse.md) |  | [optional] 
**bank_branch_id** | **str** |  | [optional] 
**bank_branch** | [**BankBranchResponse**](BankBranchResponse.md) |  | [optional] 
**account_number** | **str** |  | [optional] 
**account_name** | **str** |  | [optional] 
**beneficiary_id** | **str** |  | [optional] 
**priority** | **float** |  | [optional] 
**currency** | [**CurrencySimpleResponse**](CurrencySimpleResponse.md) |  | [optional] 
**percentage** | **float** |  | [optional] 
**amount** | **float** |  | [optional] 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



