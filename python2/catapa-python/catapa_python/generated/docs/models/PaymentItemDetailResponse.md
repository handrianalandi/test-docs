# PaymentItemDetailResponse

## Properties

| Name          | Type                                                                            | Description |
| :------------ | :------------------------------------------------------------------------------ | :---------- |
| `id`          | `str`                                                                           |             |
| `amount`      | `float`                                                                         |             |
| `salary_item` | [`PaymentItemDetailSalaryItemResponse`](PaymentItemDetailSalaryItemResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import PaymentItemDetailResponse

payment_item_detail_response = PaymentItemDetailResponse(
    id="''",
    amount=1.337,
    salary_item=None,  # [PaymentItemDetailSalaryItemResponse](PaymentItemDetailSalaryItemResponse.md)
)
```

### Working with JSON

```python
from catapa import PaymentItemDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
payment_item_detail_response = PaymentItemDetailResponse.from_json(json_str)

# Convert to JSON
print(payment_item_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import PaymentItemDetailResponse

# Convert to/from dictionary
data_dict = payment_item_detail_response.to_dict()
payment_item_detail_response = PaymentItemDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(payment_item_detail_response.id)
# Update properties
payment_item_detail_response.id = "new_value"
```
