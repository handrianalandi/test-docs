# PayrollProcessSnapshotEmploymentStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**effective_date** | **date** |  | [optional] 
**position** | [**IdResponse**](IdResponse.md) |  | [optional] 
**organization** | [**IdResponse**](IdResponse.md) |  | [optional] 
**location** | [**IdResponse**](IdResponse.md) |  | [optional] 
**sub_location** | [**IdResponse**](IdResponse.md) |  | [optional] 
**job_title** | [**IdResponse**](IdResponse.md) |  | [optional] 
**job_level** | [**IdResponse**](IdResponse.md) |  | [optional] 
**employment_type** | [**IdResponse**](IdResponse.md) |  | [optional] 
**operational_group** | [**IdResponse**](IdResponse.md) |  | [optional] 
**cost_center** | [**IdResponse**](IdResponse.md) |  | [optional] 
**company** | [**IdResponse**](IdResponse.md) |  | [optional] 
**contract_start** | **date** |  | [optional] 
**contract_end** | **date** |  | [optional] 
**permanent_date** | **date** |  | [optional] 

## Example

```python
from catapa import PayrollProcessSnapshotEmploymentStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayrollProcessSnapshotEmploymentStatusResponse from a JSON string
payroll_process_snapshot_employment_status_response_instance = PayrollProcessSnapshotEmploymentStatusResponse.from_json(json)
# print the JSON string representation of the object
print(PayrollProcessSnapshotEmploymentStatusResponse.to_json())

# convert the object into a dict
payroll_process_snapshot_employment_status_response_dict = payroll_process_snapshot_employment_status_response_instance.to_dict()
# create an instance of PayrollProcessSnapshotEmploymentStatusResponse from a dict
payroll_process_snapshot_employment_status_response_from_dict = PayrollProcessSnapshotEmploymentStatusResponse.from_dict(payroll_process_snapshot_employment_status_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



