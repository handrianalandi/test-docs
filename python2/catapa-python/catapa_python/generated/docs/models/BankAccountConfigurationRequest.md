# BankAccountConfigurationRequest

## Properties

| Name                   | Type                        | Required | Description |
| :--------------------- | :-------------------------- | :------: | :---------- |
| `id`                   | `str`                       |    ❌    |             |
| `company_bank_account` | [`IdRequest`](IdRequest.md) |    ❌    |             |
| `bank_id`              | `str`                       |    ✅    |             |
| `bank_branch_id`       | `str`                       |    ❌    |             |
| `account_number`       | `str`                       |    ✅    | Numeric     |
| `account_name`         | `str`                       |    ✅    |             |
| `beneficiary_id`       | `str`                       |    ❌    |             |
| `priority`             | `float`                     |    ✅    |             |
| `currency`             | [`IdRequest`](IdRequest.md) |    ✅    |             |
| `percentage`           | `float`                     |    ✅    |             |
| `amount`               | `float`                     |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import BankAccountConfigurationRequest

bank_account_configuration_request = BankAccountConfigurationRequest(
    id="''",
    company_bank_account=None,  # [IdRequest](IdRequest.md)
    bank_id="''",
    bank_branch_id="''",
    account_number="''",
    account_name="'012'",
    beneficiary_id="''",
    priority=1,
    currency=None,  # [IdRequest](IdRequest.md)
    percentage=0,
    amount=0,
)
```

### Working with JSON

```python
from catapa import BankAccountConfigurationRequest

# Parse from JSON
json_str = '{"id": "example"}'
bank_account_configuration_request = BankAccountConfigurationRequest.from_json(json_str)

# Convert to JSON
print(bank_account_configuration_request.to_json())
```

### Working with dictionaries

```python
from catapa import BankAccountConfigurationRequest

# Convert to/from dictionary
data_dict = bank_account_configuration_request.to_dict()
bank_account_configuration_request = BankAccountConfigurationRequest.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(bank_account_configuration_request.id)
# Update properties
bank_account_configuration_request.id = "new_value"
```
