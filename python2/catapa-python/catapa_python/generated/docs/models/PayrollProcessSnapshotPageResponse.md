# PayrollProcessSnapshotPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[PayrollProcessSnapshotResponse]**](PayrollProcessSnapshotResponse.md) |  | 

## Example

```python
from catapa import PayrollProcessSnapshotPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayrollProcessSnapshotPageResponse from a JSON string
payroll_process_snapshot_page_response_instance = PayrollProcessSnapshotPageResponse.from_json(json)
# print the JSON string representation of the object
print(PayrollProcessSnapshotPageResponse.to_json())

# convert the object into a dict
payroll_process_snapshot_page_response_dict = payroll_process_snapshot_page_response_instance.to_dict()
# create an instance of PayrollProcessSnapshotPageResponse from a dict
payroll_process_snapshot_page_response_from_dict = PayrollProcessSnapshotPageResponse.from_dict(payroll_process_snapshot_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



