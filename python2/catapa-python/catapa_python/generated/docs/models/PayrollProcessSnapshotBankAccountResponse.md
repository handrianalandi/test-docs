# PayrollProcessSnapshotBankAccountResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**priority** | **int** |  | [optional] 

## Example

```python
from catapa import PayrollProcessSnapshotBankAccountResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayrollProcessSnapshotBankAccountResponse from a JSON string
payroll_process_snapshot_bank_account_response_instance = PayrollProcessSnapshotBankAccountResponse.from_json(json)
# print the JSON string representation of the object
print(PayrollProcessSnapshotBankAccountResponse.to_json())

# convert the object into a dict
payroll_process_snapshot_bank_account_response_dict = payroll_process_snapshot_bank_account_response_instance.to_dict()
# create an instance of PayrollProcessSnapshotBankAccountResponse from a dict
payroll_process_snapshot_bank_account_response_from_dict = PayrollProcessSnapshotBankAccountResponse.from_dict(payroll_process_snapshot_bank_account_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



