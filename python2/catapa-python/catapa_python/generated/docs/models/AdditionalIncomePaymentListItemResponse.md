# AdditionalIncomePaymentListItemResponse

## Properties

| Name           | Type  | Description |
| :------------- | :---- | :---------- |
| `employee_id`  | `str` |             |
| `payment_date` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import AdditionalIncomePaymentListItemResponse

additional_income_payment_list_item_response = AdditionalIncomePaymentListItemResponse(
    employee_id="''", payment_date="''"
)
```

### Working with JSON

```python
from catapa import AdditionalIncomePaymentListItemResponse

# Parse from JSON
json_str = '{"employee_id": "example"}'
additional_income_payment_list_item_response = (
    AdditionalIncomePaymentListItemResponse.from_json(json_str)
)

# Convert to JSON
print(additional_income_payment_list_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import AdditionalIncomePaymentListItemResponse

# Convert to/from dictionary
data_dict = additional_income_payment_list_item_response.to_dict()
additional_income_payment_list_item_response = (
    AdditionalIncomePaymentListItemResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(additional_income_payment_list_item_response.employee_id)
# Update properties
additional_income_payment_list_item_response.employee_id = "new_value"
```
