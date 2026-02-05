# ProcessedSalaryPaymentDetailResponse

## Properties

| Name             | Type  | Description |
| :--------------- | :---- | :---------- |
| `account_number` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import ProcessedSalaryPaymentDetailResponse

processed_salary_payment_detail_response = ProcessedSalaryPaymentDetailResponse(
    account_number="''"
)
```

### Working with JSON

```python
from catapa import ProcessedSalaryPaymentDetailResponse

# Parse from JSON
json_str = '{"account_number": "example"}'
processed_salary_payment_detail_response = (
    ProcessedSalaryPaymentDetailResponse.from_json(json_str)
)

# Convert to JSON
print(processed_salary_payment_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import ProcessedSalaryPaymentDetailResponse

# Convert to/from dictionary
data_dict = processed_salary_payment_detail_response.to_dict()
processed_salary_payment_detail_response = (
    ProcessedSalaryPaymentDetailResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(processed_salary_payment_detail_response.account_number)
# Update properties
processed_salary_payment_detail_response.account_number = "new_value"
```
