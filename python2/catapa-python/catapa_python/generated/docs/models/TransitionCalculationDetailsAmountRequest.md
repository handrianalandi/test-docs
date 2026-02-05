# TransitionCalculationDetailsAmountRequest

## Properties

| Name     | Type    | Required | Description |
| :------- | :------ | :------: | :---------- |
| `amount` | `float` |    ✅    |             |
| `id`     | `str`   |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import TransitionCalculationDetailsAmountRequest

transition_calculation_details_amount_request = (
    TransitionCalculationDetailsAmountRequest(amount=1.337, id="''")
)
```

### Working with JSON

```python
from catapa import TransitionCalculationDetailsAmountRequest

# Parse from JSON
json_str = '{"amount": "example"}'
transition_calculation_details_amount_request = (
    TransitionCalculationDetailsAmountRequest.from_json(json_str)
)

# Convert to JSON
print(transition_calculation_details_amount_request.to_json())
```

### Working with dictionaries

```python
from catapa import TransitionCalculationDetailsAmountRequest

# Convert to/from dictionary
data_dict = transition_calculation_details_amount_request.to_dict()
transition_calculation_details_amount_request = (
    TransitionCalculationDetailsAmountRequest.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(transition_calculation_details_amount_request.amount)
# Update properties
transition_calculation_details_amount_request.amount = new_value
```
