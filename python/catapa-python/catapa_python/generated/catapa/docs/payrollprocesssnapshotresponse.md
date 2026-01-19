# PayrollProcessSnapshotResponse

## Properties

| Name                                    | Type                                                                                                                    | Description | Notes       |
| --------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **employee\_id**                        | **str**                                                                                                                 |             | \[optional] |
| **effective\_date**                     | **date**                                                                                                                |             | \[optional] |
| **termination\_date**                   | **date**                                                                                                                |             | \[optional] |
| **employment\_status**                  | [**PayrollProcessSnapshotEmploymentStatusResponse**](payrollprocesssnapshotemploymentstatusresponse.md)                 |             | \[optional] |
| **kpp**                                 | [**IdResponse**](idresponse.md)                                                                                         |             | \[optional] |
| **paygroup**                            | [**IdCodeNameResponse**](idcodenameresponse.md)                                                                         |             | \[optional] |
| **payroll\_sequence\_number**           | **int**                                                                                                                 |             | \[optional] |
| **previous\_payroll\_sequence\_number** | **int**                                                                                                                 |             | \[optional] |
| **payment\_item\_group**                | [**IdResponse**](idresponse.md)                                                                                         |             | \[optional] |
| **bank\_account\_configuration**        | [**PayrollProcessSnapshotBankAccountConfigurationResponse**](payrollprocesssnapshotbankaccountconfigurationresponse.md) |             | \[optional] |
| **workflow\_activities**                | [**List\[PayrollProcessSnapshotWorkflowActivityResponse\]**](payrollprocesssnapshotworkflowactivityresponse.md)         |             | \[optional] |

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

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
