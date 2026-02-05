# TransitionTimeAllowanceDetailResponse

## Properties

| Name                        | Type    | Description |
| :-------------------------- | :------ | :---------- |
| `amount`                    | `float` |             |
| `var_date`                  | `str`   |             |
| `salary_decree_number`      | `str`   |             |
| `salary_template_detail_id` | `str`   |             |

## Usage Examples

### Creating an instance

```python
from catapa import TransitionTimeAllowanceDetailResponse

transition_time_allowance_detail_response = TransitionTimeAllowanceDetailResponse(
    amount=1.337,
    var_date="''",
    salary_decree_number="''",
    salary_template_detail_id="''",
)
```

### Working with JSON

```python
from catapa import TransitionTimeAllowanceDetailResponse

# Parse from JSON
json_str = '{"amount": "example"}'
transition_time_allowance_detail_response = (
    TransitionTimeAllowanceDetailResponse.from_json(json_str)
)

# Convert to JSON
print(transition_time_allowance_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import TransitionTimeAllowanceDetailResponse

# Convert to/from dictionary
data_dict = transition_time_allowance_detail_response.to_dict()
transition_time_allowance_detail_response = (
    TransitionTimeAllowanceDetailResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(transition_time_allowance_detail_response.amount)
# Update properties
transition_time_allowance_detail_response.amount = new_value
```
