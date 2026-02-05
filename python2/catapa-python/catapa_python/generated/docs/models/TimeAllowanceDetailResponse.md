# TimeAllowanceDetailResponse

## Properties

| Name       | Type    | Description |
| :--------- | :------ | :---------- |
| `amount`   | `float` |             |
| `var_date` | `str`   |             |

## Usage Examples

### Creating an instance

```python
from catapa import TimeAllowanceDetailResponse

time_allowance_detail_response = TimeAllowanceDetailResponse(
    amount=1.337, var_date="''"
)
```

### Working with JSON

```python
from catapa import TimeAllowanceDetailResponse

# Parse from JSON
json_str = '{"amount": "example"}'
time_allowance_detail_response = TimeAllowanceDetailResponse.from_json(json_str)

# Convert to JSON
print(time_allowance_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import TimeAllowanceDetailResponse

# Convert to/from dictionary
data_dict = time_allowance_detail_response.to_dict()
time_allowance_detail_response = TimeAllowanceDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(time_allowance_detail_response.amount)
# Update properties
time_allowance_detail_response.amount = new_value
```
