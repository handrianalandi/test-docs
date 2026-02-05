# RecurringConfigurationRequest

## Properties

| Name                   | Type                                                        | Required | Description |
| :--------------------- | :---------------------------------------------------------- | :------: | :---------- |
| `max_recurring_times`  | `float`                                                     |    ✅    |             |
| `period_interval`      | `float`                                                     |    ✅    |             |
| `recurring_end_type`   | `str`                                                       |    ✅    |             |
| `recurring_period_end` | [`RecurringPeriodEndRequest`](RecurringPeriodEndRequest.md) |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import RecurringConfigurationRequest

recurring_configuration_request = RecurringConfigurationRequest(
    max_recurring_times=1.337,
    period_interval=1.337,
    recurring_end_type="''",
    recurring_period_end=None,  # [RecurringPeriodEndRequest](RecurringPeriodEndRequest.md)
)
```

### Working with JSON

```python
from catapa import RecurringConfigurationRequest

# Parse from JSON
json_str = '{"max_recurring_times": "example"}'
recurring_configuration_request = RecurringConfigurationRequest.from_json(json_str)

# Convert to JSON
print(recurring_configuration_request.to_json())
```

### Working with dictionaries

```python
from catapa import RecurringConfigurationRequest

# Convert to/from dictionary
data_dict = recurring_configuration_request.to_dict()
recurring_configuration_request = RecurringConfigurationRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(recurring_configuration_request.max_recurring_times)
# Update properties
recurring_configuration_request.max_recurring_times = new_value
```
