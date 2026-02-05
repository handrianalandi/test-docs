# SalaryPaymentSummaryResponse

## Properties

| Name                              | Type                                                                                                  | Description |
| :-------------------------------- | :---------------------------------------------------------------------------------------------------- | :---------- |
| `account_number`                  | `str`                                                                                                 |             |
| `amount`                          | `float`                                                                                               |             |
| `id`                              | `str`                                                                                                 |             |
| `number_of_processed_employees`   | `float`                                                                                               |             |
| `number_of_transferred_employees` | `float`                                                                                               |             |
| `payment_date`                    | `str`                                                                                                 |             |
| `transferred_amount`              | `float`                                                                                               |             |
| `company_bank_account`            | [`SalaryPaymentSummaryCompanyBankAccountResponse`](SalaryPaymentSummaryCompanyBankAccountResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryPaymentSummaryResponse

salary_payment_summary_response = SalaryPaymentSummaryResponse(
    account_number="''",
    amount=1.337,
    id="''",
    number_of_processed_employees=1.337,
    number_of_transferred_employees=1.337,
    payment_date="''",
    transferred_amount=1.337,
    company_bank_account=None,  # [SalaryPaymentSummaryCompanyBankAccountResponse](SalaryPaymentSummaryCompanyBankAccountResponse.md)
)
```

### Working with JSON

```python
from catapa import SalaryPaymentSummaryResponse

# Parse from JSON
json_str = '{"account_number": "example"}'
salary_payment_summary_response = SalaryPaymentSummaryResponse.from_json(json_str)

# Convert to JSON
print(salary_payment_summary_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryPaymentSummaryResponse

# Convert to/from dictionary
data_dict = salary_payment_summary_response.to_dict()
salary_payment_summary_response = SalaryPaymentSummaryResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_payment_summary_response.account_number)
# Update properties
salary_payment_summary_response.account_number = "new_value"
```
