# PayrollProcessSnapshotEmploymentStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**effective_date** | **date** |  | 
**position** | [**IdResponse**](IdResponse.md) |  | 
**organization** | [**IdResponse**](IdResponse.md) |  | 
**location** | [**IdResponse**](IdResponse.md) |  | 
**sub_location** | [**IdResponse**](IdResponse.md) |  | 
**job_title** | [**IdResponse**](IdResponse.md) |  | 
**job_level** | [**IdResponse**](IdResponse.md) |  | 
**employment_type** | [**IdResponse**](IdResponse.md) |  | 
**operational_group** | [**IdResponse**](IdResponse.md) |  | 
**cost_center** | [**IdResponse**](IdResponse.md) |  | 
**company** | [**IdResponse**](IdResponse.md) |  | 
**contract_start** | **date** |  | 
**contract_end** | **date** |  | 
**permanent_date** | **date** |  | 

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



