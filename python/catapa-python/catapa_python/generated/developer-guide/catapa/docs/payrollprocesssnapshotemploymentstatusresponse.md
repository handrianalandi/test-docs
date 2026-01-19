# PayrollProcessSnapshotEmploymentStatusResponse

## Properties

| Name                   | Type                            | Description | Notes       |
| ---------------------- | ------------------------------- | ----------- | ----------- |
| **effective\_date**    | **date**                        |             | \[optional] |
| **position**           | [**IdResponse**](idresponse.md) |             | \[optional] |
| **organization**       | [**IdResponse**](idresponse.md) |             | \[optional] |
| **location**           | [**IdResponse**](idresponse.md) |             | \[optional] |
| **sub\_location**      | [**IdResponse**](idresponse.md) |             | \[optional] |
| **job\_title**         | [**IdResponse**](idresponse.md) |             | \[optional] |
| **job\_level**         | [**IdResponse**](idresponse.md) |             | \[optional] |
| **employment\_type**   | [**IdResponse**](idresponse.md) |             | \[optional] |
| **operational\_group** | [**IdResponse**](idresponse.md) |             | \[optional] |
| **cost\_center**       | [**IdResponse**](idresponse.md) |             | \[optional] |
| **company**            | [**IdResponse**](idresponse.md) |             | \[optional] |
| **contract\_start**    | **date**                        |             | \[optional] |
| **contract\_end**      | **date**                        |             | \[optional] |
| **permanent\_date**    | **date**                        |             | \[optional] |

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

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
