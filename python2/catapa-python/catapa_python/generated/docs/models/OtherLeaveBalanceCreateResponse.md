# OtherLeaveBalanceCreateResponse

## Properties

| Name                 | Type                                                      | Description |
| :------------------- | :-------------------------------------------------------- | :---------- |
| `id`                 | `str`                                                     |             |
| `employee`           | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)     |             |
| `other_leave_status` | [`OtherLeaveStatusResponse`](OtherLeaveStatusResponse.md) |             |
| `year`               | `float`                                                   |             |
| `given_date`         | `str`                                                     |             |
| `start_date`         | `str`                                                     |             |
| `end_date`           | `str`                                                     |             |
| `balance`            | `float`                                                   |             |

## Usage Examples

### Creating an instance

```python
from catapa import OtherLeaveBalanceCreateResponse

other_leave_balance_create_response = OtherLeaveBalanceCreateResponse(
    id="''",
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    other_leave_status=None,  # [OtherLeaveStatusResponse](OtherLeaveStatusResponse.md)
    year=1.337,
    given_date="''",
    start_date="''",
    end_date="''",
    balance=1.337,
)
```

### Working with JSON

```python
from catapa import OtherLeaveBalanceCreateResponse

# Parse from JSON
json_str = '{"id": "example"}'
other_leave_balance_create_response = OtherLeaveBalanceCreateResponse.from_json(
    json_str
)

# Convert to JSON
print(other_leave_balance_create_response.to_json())
```

### Working with dictionaries

```python
from catapa import OtherLeaveBalanceCreateResponse

# Convert to/from dictionary
data_dict = other_leave_balance_create_response.to_dict()
other_leave_balance_create_response = OtherLeaveBalanceCreateResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(other_leave_balance_create_response.id)
# Update properties
other_leave_balance_create_response.id = "new_value"
```
