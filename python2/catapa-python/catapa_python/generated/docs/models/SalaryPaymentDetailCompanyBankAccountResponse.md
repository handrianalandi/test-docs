# SalaryPaymentDetailCompanyBankAccountResponse

## Properties

| Name             | Type                                                  | Description |
| :--------------- | :---------------------------------------------------- | :---------- |
| `id`             | `UUID`                                                |             |
| `name`           | `str`                                                 |             |
| `company_code`   | `str`                                                 |             |
| `account_number` | `str`                                                 |             |
| `bank_branch`    | [`BankBranchResponse`](BankBranchResponse.md)         |             |
| `currency`       | [`CurrencySimpleResponse`](CurrencySimpleResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryPaymentDetailCompanyBankAccountResponse

salary_payment_detail_company_bank_account_response = (
    SalaryPaymentDetailCompanyBankAccountResponse(
        id="'eb919ed1-c3c1-4334-a626-b9178b8a98ae'",
        name="'Comp Bank Account 1'",
        company_code="'C001'",
        account_number="'98343411'",
        bank_branch=None,  # [BankBranchResponse](BankBranchResponse.md)
        currency=None,  # [CurrencySimpleResponse](CurrencySimpleResponse.md)
    )
)
```

### Working with JSON

```python
from catapa import SalaryPaymentDetailCompanyBankAccountResponse

# Parse from JSON
json_str = '{"id": "example"}'
salary_payment_detail_company_bank_account_response = (
    SalaryPaymentDetailCompanyBankAccountResponse.from_json(json_str)
)

# Convert to JSON
print(salary_payment_detail_company_bank_account_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryPaymentDetailCompanyBankAccountResponse

# Convert to/from dictionary
data_dict = salary_payment_detail_company_bank_account_response.to_dict()
salary_payment_detail_company_bank_account_response = (
    SalaryPaymentDetailCompanyBankAccountResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(salary_payment_detail_company_bank_account_response.id)
# Update properties
salary_payment_detail_company_bank_account_response.id = "new_value"
```
