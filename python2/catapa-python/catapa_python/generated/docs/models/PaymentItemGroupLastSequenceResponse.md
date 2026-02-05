# PaymentItemGroupLastSequenceResponse

## Properties

| Name            | Type  | Description |
| :-------------- | :---- | :---------- |
| `employee_id`   | `str` |             |
| `last_sequence` | `int` |             |

## Usage Examples

### Creating an instance

```python
from catapa import PaymentItemGroupLastSequenceResponse

payment_item_group_last_sequence_response = PaymentItemGroupLastSequenceResponse(
    employee_id="''", last_sequence=56
)
```

### Working with JSON

```python
from catapa import PaymentItemGroupLastSequenceResponse

# Parse from JSON
json_str = '{"employee_id": "example"}'
payment_item_group_last_sequence_response = (
    PaymentItemGroupLastSequenceResponse.from_json(json_str)
)

# Convert to JSON
print(payment_item_group_last_sequence_response.to_json())
```

### Working with dictionaries

```python
from catapa import PaymentItemGroupLastSequenceResponse

# Convert to/from dictionary
data_dict = payment_item_group_last_sequence_response.to_dict()
payment_item_group_last_sequence_response = (
    PaymentItemGroupLastSequenceResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(payment_item_group_last_sequence_response.employee_id)
# Update properties
payment_item_group_last_sequence_response.employee_id = "new_value"
```
