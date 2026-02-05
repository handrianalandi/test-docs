# LeaveBalanceRequest

## Properties

| Name                             | Type    | Required | Description |
| :------------------------------- | :------ | :------: | :---------- |
| `identification_number`          | `str`   |    ✅    |             |
| `year`                           | `float` |    ✅    |             |
| `accrual_frequency_type`         | `str`   |    ✅    |             |
| `monthly_accrual_include_bonus`  | `bool`  |    ✅    |             |
| `given_date`                     | `str`   |    ✅    |             |
| `start_date`                     | `str`   |    ✅    |             |
| `end_date`                       | `str`   |    ✅    |             |
| `balance`                        | `float` |    ✅    |             |
| `bonus`                          | `float` |    ✅    |             |
| `debt`                           | `float` |    ✅    |             |
| `extended`                       | `bool`  |    ✅    |             |
| `maximum_extended_duration`      | `float` |    ✅    |             |
| `maximum_extended_balance`       | `float` |    ✅    |             |
| `extended_balance_include_bonus` | `bool`  |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import LeaveBalanceRequest

leave_balance_request = LeaveBalanceRequest(
    identification_number="''",
    year=1.337,
    accrual_frequency_type="''",
    monthly_accrual_include_bonus=True,
    given_date="''",
    start_date="''",
    end_date="''",
    balance=1.337,
    bonus=1.337,
    debt=1.337,
    extended=True,
    maximum_extended_duration=1.337,
    maximum_extended_balance=1.337,
    extended_balance_include_bonus=True,
)
```

### Working with JSON

```python
from catapa import LeaveBalanceRequest

# Parse from JSON
json_str = '{"identification_number": "example"}'
leave_balance_request = LeaveBalanceRequest.from_json(json_str)

# Convert to JSON
print(leave_balance_request.to_json())
```

### Working with dictionaries

```python
from catapa import LeaveBalanceRequest

# Convert to/from dictionary
data_dict = leave_balance_request.to_dict()
leave_balance_request = LeaveBalanceRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(leave_balance_request.identification_number)
# Update properties
leave_balance_request.identification_number = "new_value"
```
