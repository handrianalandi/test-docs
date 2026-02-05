# BankAccountConfigurationResponse

## Properties

| Name                   | Type                                                                                  | Description |
| :--------------------- | :------------------------------------------------------------------------------------ | :---------- |
| `id`                   | `str`                                                                                 |             |
| `employee`             | [`EmployeeResponse`](EmployeeResponse.md)                                             |             |
| `payment_method`       | `str`                                                                                 |             |
| `updated_date`         | `int`                                                                                 |             |
| `effective_date`       | `date`                                                                                | YYYY-MM-DD  |
| `distribution_method`  | `str`                                                                                 |             |
| `default_bank_account` | [`BankAccountResponse`](BankAccountResponse.md)                                       |             |
| `bank_accounts`        | [`List[BankAccountResponse]`](BankAccountResponse.md)                                 |             |
| `source`               | [`BankAccountConfigurationResponseSource`](BankAccountConfigurationResponseSource.md) |             |
| `approval_status`      | `str`                                                                                 |             |

## Usage Examples

### Creating an instance

```python
from catapa import BankAccountConfigurationResponse

bank_account_configuration_response = BankAccountConfigurationResponse(
    id="''",
    employee=None,  # [EmployeeResponse](EmployeeResponse.md)
    payment_method="''",
    updated_date=56,
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    distribution_method="''",
    default_bank_account=None,  # [BankAccountResponse](BankAccountResponse.md)
    bank_accounts=[],  # List[[BankAccountResponse](BankAccountResponse.md)]
    source=None,  # [BankAccountConfigurationResponseSource](BankAccountConfigurationResponseSource.md)
    approval_status="'APPROVED'",
)
```

### Working with JSON

```python
from catapa import BankAccountConfigurationResponse

# Parse from JSON
json_str = '{"id": "example"}'
bank_account_configuration_response = BankAccountConfigurationResponse.from_json(
    json_str
)

# Convert to JSON
print(bank_account_configuration_response.to_json())
```

### Working with dictionaries

```python
from catapa import BankAccountConfigurationResponse

# Convert to/from dictionary
data_dict = bank_account_configuration_response.to_dict()
bank_account_configuration_response = BankAccountConfigurationResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(bank_account_configuration_response.id)
# Update properties
bank_account_configuration_response.id = "new_value"
```
