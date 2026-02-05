# SalaryPaymentDetailResponse

## Properties

| Name                    | Type                                                                                                | Description |
| :---------------------- | :-------------------------------------------------------------------------------------------------- | :---------- |
| `id`                    | `str`                                                                                               |             |
| `bank_code`             | `str`                                                                                               |             |
| `bank_name`             | `str`                                                                                               |             |
| `account_name`          | `str`                                                                                               |             |
| `account_number`        | `str`                                                                                               |             |
| `bank_account_priority` | `int`                                                                                               |             |
| `currency_code`         | `str`                                                                                               |             |
| `amount`                | `float`                                                                                             |             |
| `exchanged_amount`      | `float`                                                                                             |             |
| `company_bank_account`  | [`SalaryPaymentDetailCompanyBankAccountResponse`](SalaryPaymentDetailCompanyBankAccountResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryPaymentDetailResponse

salary_payment_detail_response = SalaryPaymentDetailResponse(
    id="''",
    bank_code="''",
    bank_name="''",
    account_name="''",
    account_number="''",
    bank_account_priority=56,
    currency_code="''",
    amount=1.337,
    exchanged_amount=1.337,
    company_bank_account=None,  # [SalaryPaymentDetailCompanyBankAccountResponse](SalaryPaymentDetailCompanyBankAccountResponse.md)
)
```

### Working with JSON

```python
from catapa import SalaryPaymentDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
salary_payment_detail_response = SalaryPaymentDetailResponse.from_json(json_str)

# Convert to JSON
print(salary_payment_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryPaymentDetailResponse

# Convert to/from dictionary
data_dict = salary_payment_detail_response.to_dict()
salary_payment_detail_response = SalaryPaymentDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_payment_detail_response.id)
# Update properties
salary_payment_detail_response.id = "new_value"
```
