# CompanyBankAccountResponse

## Properties

| Name             | Type                                          | Description |
| :--------------- | :-------------------------------------------- | :---------- |
| `id`             | `UUID`                                        |             |
| `name`           | `str`                                         |             |
| `company_code`   | `str`                                         |             |
| `account_number` | `str`                                         |             |
| `bank_branch`    | [`BankBranchResponse`](BankBranchResponse.md) |             |
| `currency`       | [`CurrencyResponse`](CurrencyResponse.md)     |             |

## Usage Examples

### Creating an instance

```python
from catapa import CompanyBankAccountResponse

company_bank_account_response = CompanyBankAccountResponse(
    id="'eb919ed1-c3c1-4334-a626-b9178b8a98ae'",
    name="'Comp Bank Account 1'",
    company_code="'C001'",
    account_number="'98343411'",
    bank_branch=None,  # [BankBranchResponse](BankBranchResponse.md)
    currency=None,  # [CurrencyResponse](CurrencyResponse.md)
)
```

### Working with JSON

```python
from catapa import CompanyBankAccountResponse

# Parse from JSON
json_str = '{"id": "example"}'
company_bank_account_response = CompanyBankAccountResponse.from_json(json_str)

# Convert to JSON
print(company_bank_account_response.to_json())
```

### Working with dictionaries

```python
from catapa import CompanyBankAccountResponse

# Convert to/from dictionary
data_dict = company_bank_account_response.to_dict()
company_bank_account_response = CompanyBankAccountResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(company_bank_account_response.id)
# Update properties
company_bank_account_response.id = "new_value"
```
