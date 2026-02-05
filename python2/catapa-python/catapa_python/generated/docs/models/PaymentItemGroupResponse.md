# PaymentItemGroupResponse

## Properties

| Name                   | Type                                                              | Description |
| :--------------------- | :---------------------------------------------------------------- | :---------- |
| `id`                   | `str`                                                             |             |
| `payment_type`         | `str`                                                             |             |
| `start_process_date`   | `str`                                                             |             |
| `end_process_date`     | `str`                                                             |             |
| `job_level`            | [`IdCodeNameResponse`](IdCodeNameResponse.md)                     |             |
| `location`             | [`IdCodeNameResponse`](IdCodeNameResponse.md)                     |             |
| `payment_item_details` | [`List[PaymentItemDetailResponse]`](PaymentItemDetailResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import PaymentItemGroupResponse

payment_item_group_response = PaymentItemGroupResponse(
    id="''",
    payment_type="''",
    start_process_date="''",
    end_process_date="''",
    job_level=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    location=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    payment_item_details=[],  # List[[PaymentItemDetailResponse](PaymentItemDetailResponse.md)]
)
```

### Working with JSON

```python
from catapa import PaymentItemGroupResponse

# Parse from JSON
json_str = '{"id": "example"}'
payment_item_group_response = PaymentItemGroupResponse.from_json(json_str)

# Convert to JSON
print(payment_item_group_response.to_json())
```

### Working with dictionaries

```python
from catapa import PaymentItemGroupResponse

# Convert to/from dictionary
data_dict = payment_item_group_response.to_dict()
payment_item_group_response = PaymentItemGroupResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(payment_item_group_response.id)
# Update properties
payment_item_group_response.id = "new_value"
```
