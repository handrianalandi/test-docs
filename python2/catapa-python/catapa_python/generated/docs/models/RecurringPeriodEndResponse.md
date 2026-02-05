# RecurringPeriodEndResponse

## Properties

| Name    | Type    | Description |
| :------ | :------ | :---------- |
| `year`  | `float` |             |
| `month` | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import RecurringPeriodEndResponse

recurring_period_end_response = RecurringPeriodEndResponse(year=1.337, month=1.337)
```

### Working with JSON

```python
from catapa import RecurringPeriodEndResponse

# Parse from JSON
json_str = '{"year": "example"}'
recurring_period_end_response = RecurringPeriodEndResponse.from_json(json_str)

# Convert to JSON
print(recurring_period_end_response.to_json())
```

### Working with dictionaries

```python
from catapa import RecurringPeriodEndResponse

# Convert to/from dictionary
data_dict = recurring_period_end_response.to_dict()
recurring_period_end_response = RecurringPeriodEndResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(recurring_period_end_response.year)
# Update properties
recurring_period_end_response.year = new_value
```
