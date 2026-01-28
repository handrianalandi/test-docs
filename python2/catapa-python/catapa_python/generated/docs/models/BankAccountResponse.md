# BankAccountResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**bank_id** | **str** |  | 
**bank** | [**BankResponse**](BankResponse.md) |  | 
**bank_branch_id** | **str** |  | 
**bank_branch** | [**BankBranchResponse**](BankBranchResponse.md) |  | 
**account_number** | **str** |  | 
**account_name** | **str** |  | 
**beneficiary_id** | **str** |  | 
**priority** | **float** |  | 
**currency** | [**CurrencySimpleResponse**](CurrencySimpleResponse.md) |  | 
**percentage** | **float** |  | 
**amount** | **float** |  | 

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



