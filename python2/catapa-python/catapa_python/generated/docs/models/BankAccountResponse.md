# BankAccountResponse

## Properties

| Name             | Type                                                  | Description |
| :--------------- | :---------------------------------------------------- | :---------- |
| `id`             | `UUID`                                                |             |
| `bank_id`        | `str`                                                 |             |
| `bank`           | [`BankResponse`](BankResponse.md)                     |             |
| `bank_branch_id` | `str`                                                 |             |
| `bank_branch`    | [`BankBranchResponse`](BankBranchResponse.md)         |             |
| `account_number` | `str`                                                 |             |
| `account_name`   | `str`                                                 |             |
| `beneficiary_id` | `str`                                                 |             |
| `priority`       | `float`                                               |             |
| `currency`       | [`CurrencySimpleResponse`](CurrencySimpleResponse.md) |             |
| `percentage`     | `float`                                               |             |
| `amount`         | `float`                                               |             |

## Usage Examples

### Creating an instance

```python
from catapa import BankAccountResponse

bank_account_response = BankAccountResponse(
    id="'8bf610cc-c83b-11e6-9d9d-cec0c932ce01'",
    bank_id="''",
    bank=None,  # [BankResponse](BankResponse.md)
    bank_branch_id="''",
    bank_branch=None,  # [BankBranchResponse](BankBranchResponse.md)
    account_number="''",
    account_name="''",
    beneficiary_id="''",
    priority=1.337,
    currency=None,  # [CurrencySimpleResponse](CurrencySimpleResponse.md)
    percentage=1.337,
    amount=1.337,
)
```

### Working with JSON

```python
from catapa import BankAccountResponse

# Parse from JSON
json_str = '{"id": "example"}'
bank_account_response = BankAccountResponse.from_json(json_str)

# Convert to JSON
print(bank_account_response.to_json())
```

### Working with dictionaries

```python
from catapa import BankAccountResponse

# Convert to/from dictionary
data_dict = bank_account_response.to_dict()
bank_account_response = BankAccountResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(bank_account_response.id)
# Update properties
bank_account_response.id = "new_value"
```
