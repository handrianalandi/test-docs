# PayrollProcessSnapshotBankAccountConfigurationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**effective_date** | **date** |  | [optional] 
**bank_accounts** | [**List[PayrollProcessSnapshotBankAccountResponse]**](PayrollProcessSnapshotBankAccountResponse.md) |  | [optional] 

## Example

```python
from catapa import PayrollProcessSnapshotBankAccountConfigurationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayrollProcessSnapshotBankAccountConfigurationResponse from a JSON string
payroll_process_snapshot_bank_account_configuration_response_instance = PayrollProcessSnapshotBankAccountConfigurationResponse.from_json(json)
# print the JSON string representation of the object
print(PayrollProcessSnapshotBankAccountConfigurationResponse.to_json())

# convert the object into a dict
payroll_process_snapshot_bank_account_configuration_response_dict = payroll_process_snapshot_bank_account_configuration_response_instance.to_dict()
# create an instance of PayrollProcessSnapshotBankAccountConfigurationResponse from a dict
payroll_process_snapshot_bank_account_configuration_response_from_dict = PayrollProcessSnapshotBankAccountConfigurationResponse.from_dict(payroll_process_snapshot_bank_account_configuration_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



