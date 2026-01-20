# BankBranchSimpleResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**bank** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 

## Example

```python
from catapa import BankBranchSimpleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BankBranchSimpleResponse from a JSON string
bank_branch_simple_response_instance = BankBranchSimpleResponse.from_json(json)
# print the JSON string representation of the object
print(BankBranchSimpleResponse.to_json())

# convert the object into a dict
bank_branch_simple_response_dict = bank_branch_simple_response_instance.to_dict()
# create an instance of BankBranchSimpleResponse from a dict
bank_branch_simple_response_from_dict = BankBranchSimpleResponse.from_dict(bank_branch_simple_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



