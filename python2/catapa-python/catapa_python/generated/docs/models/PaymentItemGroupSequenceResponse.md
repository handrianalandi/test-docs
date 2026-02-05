# PaymentItemGroupSequenceResponse

## Properties

| Name                    | Type  | Description |
| :---------------------- | :---- | :---------- |
| `employee_id`           | `str` |             |
| `payment_item_group_id` | `str` |             |
| `sequence`              | `int` |             |
| `previous_sequence`     | `int` |             |

## Usage Examples

### Creating an instance

```python
from catapa import PaymentItemGroupSequenceResponse

payment_item_group_sequence_response = PaymentItemGroupSequenceResponse(
    employee_id="''", payment_item_group_id="''", sequence=56, previous_sequence=56
)
```

### Working with JSON

```python
from catapa import PaymentItemGroupSequenceResponse

# Parse from JSON
json_str = '{"employee_id": "example"}'
payment_item_group_sequence_response = PaymentItemGroupSequenceResponse.from_json(
    json_str
)

# Convert to JSON
print(payment_item_group_sequence_response.to_json())
```

### Working with dictionaries

```python
from catapa import PaymentItemGroupSequenceResponse

# Convert to/from dictionary
data_dict = payment_item_group_sequence_response.to_dict()
payment_item_group_sequence_response = PaymentItemGroupSequenceResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(payment_item_group_sequence_response.employee_id)
# Update properties
payment_item_group_sequence_response.employee_id = "new_value"
```
