# UpdateBankAccountConfigurationRequest

## Properties

| Name                  | Type                                                                          | Required | Description |
| :-------------------- | :---------------------------------------------------------------------------- | :------: | :---------- |
| `employee`            | [`IdRequest`](IdRequest.md)                                                   |    ❌    |             |
| `effective_date`      | `date`                                                                        |    ❌    | YYYY-MM-DD  |
| `payment_method`      | `str`                                                                         |    ✅    |             |
| `distribution_method` | `str`                                                                         |    ❌    |             |
| `bank_accounts`       | [`List[BankAccountConfigurationRequest]`](BankAccountConfigurationRequest.md) |    ❌    |             |
| `source`              | [`IdRequest`](IdRequest.md)                                                   |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import UpdateBankAccountConfigurationRequest

update_bank_account_configuration_request = UpdateBankAccountConfigurationRequest(
    employee=None,  # [IdRequest](IdRequest.md)
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    payment_method="'TRANSFER'",
    distribution_method="'PERCENTAGE'",
    bank_accounts=[],  # List[[BankAccountConfigurationRequest](BankAccountConfigurationRequest.md)]
    source=None,  # [IdRequest](IdRequest.md)
)
```

### Working with JSON

```python
from catapa import UpdateBankAccountConfigurationRequest

# Parse from JSON
json_str = '{"employee": "example"}'
update_bank_account_configuration_request = (
    UpdateBankAccountConfigurationRequest.from_json(json_str)
)

# Convert to JSON
print(update_bank_account_configuration_request.to_json())
```

### Working with dictionaries

```python
from catapa import UpdateBankAccountConfigurationRequest

# Convert to/from dictionary
data_dict = update_bank_account_configuration_request.to_dict()
update_bank_account_configuration_request = (
    UpdateBankAccountConfigurationRequest.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(update_bank_account_configuration_request.employee)
# Update properties
update_bank_account_configuration_request.employee = new_value
```
