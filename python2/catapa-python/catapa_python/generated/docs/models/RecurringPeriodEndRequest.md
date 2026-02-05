# RecurringPeriodEndRequest

## Properties

| Name    | Type    | Required | Description |
| :------ | :------ | :------: | :---------- |
| `year`  | `float` |    ✅    |             |
| `month` | `float` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import RecurringPeriodEndRequest

recurring_period_end_request = RecurringPeriodEndRequest(year=1.337, month=1.337)
```

### Working with JSON

```python
from catapa import RecurringPeriodEndRequest

# Parse from JSON
json_str = '{"year": "example"}'
recurring_period_end_request = RecurringPeriodEndRequest.from_json(json_str)

# Convert to JSON
print(recurring_period_end_request.to_json())
```

### Working with dictionaries

```python
from catapa import RecurringPeriodEndRequest

# Convert to/from dictionary
data_dict = recurring_period_end_request.to_dict()
recurring_period_end_request = RecurringPeriodEndRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(recurring_period_end_request.year)
# Update properties
recurring_period_end_request.year = new_value
```
