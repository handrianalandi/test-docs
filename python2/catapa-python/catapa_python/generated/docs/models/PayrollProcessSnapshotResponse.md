# PayrollProcessSnapshotResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_id** | **str** |  | 
**effective_date** | **date** |  | 
**termination_date** | **date** |  | 
**employment_status** | [**PayrollProcessSnapshotEmploymentStatusResponse**](PayrollProcessSnapshotEmploymentStatusResponse.md) |  | 
**kpp** | [**IdResponse**](IdResponse.md) |  | 
**paygroup** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**payroll_sequence_number** | **int** |  | 
**previous_payroll_sequence_number** | **int** |  | 
**payment_item_group** | [**IdResponse**](IdResponse.md) |  | 
**bank_account_configuration** | [**PayrollProcessSnapshotBankAccountConfigurationResponse**](PayrollProcessSnapshotBankAccountConfigurationResponse.md) |  | 
**workflow_activities** | [**List[PayrollProcessSnapshotWorkflowActivityResponse]**](PayrollProcessSnapshotWorkflowActivityResponse.md) |  | 

## Example

```python
from catapa import PayrollProcessSnapshotResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayrollProcessSnapshotResponse from a JSON string
payroll_process_snapshot_response_instance = PayrollProcessSnapshotResponse.from_json(json)
# print the JSON string representation of the object
print(PayrollProcessSnapshotResponse.to_json())

# convert the object into a dict
payroll_process_snapshot_response_dict = payroll_process_snapshot_response_instance.to_dict()
# create an instance of PayrollProcessSnapshotResponse from a dict
payroll_process_snapshot_response_from_dict = PayrollProcessSnapshotResponse.from_dict(payroll_process_snapshot_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



