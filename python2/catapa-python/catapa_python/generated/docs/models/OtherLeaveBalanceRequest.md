# OtherLeaveBalanceRequest

## Properties

| Name                      | Type    | Required | Description |
| :------------------------ | :------ | :------: | :---------- |
| `identification_number`   | `str`   |    ✅    |             |
| `other_leave_status_code` | `str`   |    ✅    |             |
| `year`                    | `float` |    ✅    |             |
| `balance`                 | `float` |    ✅    |             |
| `given_date`              | `str`   |    ✅    |             |
| `start_date`              | `str`   |    ✅    |             |
| `end_date`                | `str`   |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import OtherLeaveBalanceRequest

other_leave_balance_request = OtherLeaveBalanceRequest(
    identification_number="''",
    other_leave_status_code="''",
    year=1.337,
    balance=1.337,
    given_date="''",
    start_date="''",
    end_date="''",
)
```

### Working with JSON

```python
from catapa import OtherLeaveBalanceRequest

# Parse from JSON
json_str = '{"identification_number": "example"}'
other_leave_balance_request = OtherLeaveBalanceRequest.from_json(json_str)

# Convert to JSON
print(other_leave_balance_request.to_json())
```

### Working with dictionaries

```python
from catapa import OtherLeaveBalanceRequest

# Convert to/from dictionary
data_dict = other_leave_balance_request.to_dict()
other_leave_balance_request = OtherLeaveBalanceRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(other_leave_balance_request.identification_number)
# Update properties
other_leave_balance_request.identification_number = "new_value"
```
