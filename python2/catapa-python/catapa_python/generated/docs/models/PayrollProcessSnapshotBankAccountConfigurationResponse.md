# PayrollProcessSnapshotBankAccountConfigurationResponse

## Properties

| Name             | Type                                                                                              | Description |
| :--------------- | :------------------------------------------------------------------------------------------------ | :---------- |
| `effective_date` | `date`                                                                                            |             |
| `bank_accounts`  | [`List[PayrollProcessSnapshotBankAccountResponse]`](PayrollProcessSnapshotBankAccountResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import PayrollProcessSnapshotBankAccountConfigurationResponse

payroll_process_snapshot_bank_account_configuration_response = PayrollProcessSnapshotBankAccountConfigurationResponse(
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    bank_accounts=[],  # List[[PayrollProcessSnapshotBankAccountResponse](PayrollProcessSnapshotBankAccountResponse.md)]
)
```

### Working with JSON

```python
from catapa import PayrollProcessSnapshotBankAccountConfigurationResponse

# Parse from JSON
json_str = '{"effective_date": "example"}'
payroll_process_snapshot_bank_account_configuration_response = (
    PayrollProcessSnapshotBankAccountConfigurationResponse.from_json(json_str)
)

# Convert to JSON
print(payroll_process_snapshot_bank_account_configuration_response.to_json())
```

### Working with dictionaries

```python
from catapa import PayrollProcessSnapshotBankAccountConfigurationResponse

# Convert to/from dictionary
data_dict = payroll_process_snapshot_bank_account_configuration_response.to_dict()
payroll_process_snapshot_bank_account_configuration_response = (
    PayrollProcessSnapshotBankAccountConfigurationResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(payroll_process_snapshot_bank_account_configuration_response.effective_date)
# Update properties
payroll_process_snapshot_bank_account_configuration_response.effective_date = new_value
```
