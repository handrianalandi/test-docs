# PaymentItemDetailSalaryItemResponse

## Properties

| Name                   | Type   | Description |
| :--------------------- | :----- | :---------- |
| `id`                   | `str`  |             |
| `code`                 | `str`  |             |
| `name`                 | `str`  |             |
| `salary_item_category` | `str`  |             |
| `salary_item_type`     | `str`  |             |
| `thp`                  | `bool` |             |

## Usage Examples

### Creating an instance

```python
from catapa import PaymentItemDetailSalaryItemResponse

payment_item_detail_salary_item_response = PaymentItemDetailSalaryItemResponse(
    id="''",
    code="''",
    name="''",
    salary_item_category="''",
    salary_item_type="''",
    thp=True,
)
```

### Working with JSON

```python
from catapa import PaymentItemDetailSalaryItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
payment_item_detail_salary_item_response = (
    PaymentItemDetailSalaryItemResponse.from_json(json_str)
)

# Convert to JSON
print(payment_item_detail_salary_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import PaymentItemDetailSalaryItemResponse

# Convert to/from dictionary
data_dict = payment_item_detail_salary_item_response.to_dict()
payment_item_detail_salary_item_response = (
    PaymentItemDetailSalaryItemResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(payment_item_detail_salary_item_response.id)
# Update properties
payment_item_detail_salary_item_response.id = "new_value"
```
