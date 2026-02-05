# TransitionCalculationDetailsRequest

## Properties

| Name            | Type                                                                                              | Required | Description |
| :-------------- | :------------------------------------------------------------------------------------------------ | :------: | :---------- |
| `transition_id` | `str`                                                                                             |    ✅    |             |
| `details`       | [`List[TransitionCalculationDetailsAmountRequest]`](TransitionCalculationDetailsAmountRequest.md) |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import TransitionCalculationDetailsRequest

transition_calculation_details_request = TransitionCalculationDetailsRequest(
    transition_id="''",
    details=[],  # List[[TransitionCalculationDetailsAmountRequest](TransitionCalculationDetailsAmountRequest.md)]
)
```

### Working with JSON

```python
from catapa import TransitionCalculationDetailsRequest

# Parse from JSON
json_str = '{"transition_id": "example"}'
transition_calculation_details_request = TransitionCalculationDetailsRequest.from_json(
    json_str
)

# Convert to JSON
print(transition_calculation_details_request.to_json())
```

### Working with dictionaries

```python
from catapa import TransitionCalculationDetailsRequest

# Convert to/from dictionary
data_dict = transition_calculation_details_request.to_dict()
transition_calculation_details_request = TransitionCalculationDetailsRequest.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(transition_calculation_details_request.transition_id)
# Update properties
transition_calculation_details_request.transition_id = "new_value"
```
