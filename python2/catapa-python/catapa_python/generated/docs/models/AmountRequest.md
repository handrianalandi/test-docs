# AmountRequest

## Properties

| Name     | Type    | Required | Description |
| :------- | :------ | :------: | :---------- |
| `amount` | `float` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import AmountRequest

amount_request = AmountRequest(amount=1.337)
```

### Working with JSON

```python
from catapa import AmountRequest

# Parse from JSON
json_str = '{"amount": "example"}'
amount_request = AmountRequest.from_json(json_str)

# Convert to JSON
print(amount_request.to_json())
```

### Working with dictionaries

```python
from catapa import AmountRequest

# Convert to/from dictionary
data_dict = amount_request.to_dict()
amount_request = AmountRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(amount_request.amount)
# Update properties
amount_request.amount = new_value
```
