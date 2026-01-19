# BankBranchResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**name** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**address** | **str** |  | [optional] 
**bank** | [**BankResponse**](BankResponse.md) |  | [optional] 

## Example

```python
from catapa import BankBranchResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BankBranchResponse from a JSON string
bank_branch_response_instance = BankBranchResponse.from_json(json)
# print the JSON string representation of the object
print(BankBranchResponse.to_json())

# convert the object into a dict
bank_branch_response_dict = bank_branch_response_instance.to_dict()
# create an instance of BankBranchResponse from a dict
bank_branch_response_from_dict = BankBranchResponse.from_dict(bank_branch_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



