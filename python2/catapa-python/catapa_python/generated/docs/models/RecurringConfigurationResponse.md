# RecurringConfigurationResponse

## Properties

| Name                   | Type                                                          | Description |
| :--------------------- | :------------------------------------------------------------ | :---------- |
| `month_interval`       | `float`                                                       |             |
| `recurring_end_type`   | `str`                                                         |             |
| `max_recurring_times`  | `float`                                                       |             |
| `recurring_period_end` | [`RecurringPeriodEndResponse`](RecurringPeriodEndResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import RecurringConfigurationResponse

recurring_configuration_response = RecurringConfigurationResponse(
    month_interval=1.337,
    recurring_end_type="''",
    max_recurring_times=1.337,
    recurring_period_end=None,  # [RecurringPeriodEndResponse](RecurringPeriodEndResponse.md)
)
```

### Working with JSON

```python
from catapa import RecurringConfigurationResponse

# Parse from JSON
json_str = '{"month_interval": "example"}'
recurring_configuration_response = RecurringConfigurationResponse.from_json(json_str)

# Convert to JSON
print(recurring_configuration_response.to_json())
```

### Working with dictionaries

```python
from catapa import RecurringConfigurationResponse

# Convert to/from dictionary
data_dict = recurring_configuration_response.to_dict()
recurring_configuration_response = RecurringConfigurationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(recurring_configuration_response.month_interval)
# Update properties
recurring_configuration_response.month_interval = new_value
```
