# SalaryPaymentSummaryCompanyBankAccountResponse

## Properties

| Name             | Type                                                      | Description |
| :--------------- | :-------------------------------------------------------- | :---------- |
| `id`             | `str`                                                     |             |
| `account_number` | `str`                                                     |             |
| `bank_branch`    | [`BankBranchSimpleResponse`](BankBranchSimpleResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryPaymentSummaryCompanyBankAccountResponse

salary_payment_summary_company_bank_account_response = (
    SalaryPaymentSummaryCompanyBankAccountResponse(
        id="''",
        account_number="'98343411'",
        bank_branch=None,  # [BankBranchSimpleResponse](BankBranchSimpleResponse.md)
    )
)
```

### Working with JSON

```python
from catapa import SalaryPaymentSummaryCompanyBankAccountResponse

# Parse from JSON
json_str = '{"id": "example"}'
salary_payment_summary_company_bank_account_response = (
    SalaryPaymentSummaryCompanyBankAccountResponse.from_json(json_str)
)

# Convert to JSON
print(salary_payment_summary_company_bank_account_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryPaymentSummaryCompanyBankAccountResponse

# Convert to/from dictionary
data_dict = salary_payment_summary_company_bank_account_response.to_dict()
salary_payment_summary_company_bank_account_response = (
    SalaryPaymentSummaryCompanyBankAccountResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(salary_payment_summary_company_bank_account_response.id)
# Update properties
salary_payment_summary_company_bank_account_response.id = "new_value"
```
