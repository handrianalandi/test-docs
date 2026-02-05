# TransitionCalculationCountResponse

## Properties

| Name                | Type    | Description |
| :------------------ | :------ | :---------- |
| `processed_count`   | `float` |             |
| `unprocessed_count` | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import TransitionCalculationCountResponse

transition_calculation_count_response = TransitionCalculationCountResponse(
    processed_count=1.337, unprocessed_count=1.337
)
```

### Working with JSON

```python
from catapa import TransitionCalculationCountResponse

# Parse from JSON
json_str = '{"processed_count": "example"}'
transition_calculation_count_response = TransitionCalculationCountResponse.from_json(
    json_str
)

# Convert to JSON
print(transition_calculation_count_response.to_json())
```

### Working with dictionaries

```python
from catapa import TransitionCalculationCountResponse

# Convert to/from dictionary
data_dict = transition_calculation_count_response.to_dict()
transition_calculation_count_response = TransitionCalculationCountResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(transition_calculation_count_response.processed_count)
# Update properties
transition_calculation_count_response.processed_count = new_value
```
