# OtherLeaveBalanceItemResponse

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
| `used_balance`       | `float`                                                   |             |
| `pending_balance`    | `float`                                                   |             |
| `approved_balance`   | `float`                                                   |             |
| `remaining`          | `float`                                                   |             |
| `min_leave_date`     | `str`                                                     |             |
| `max_leave_date`     | `str`                                                     |             |
| `active`             | `bool`                                                    |             |

## Usage Examples

### Creating an instance

```python
from catapa import OtherLeaveBalanceItemResponse

other_leave_balance_item_response = OtherLeaveBalanceItemResponse(
    id="''",
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    other_leave_status=None,  # [OtherLeaveStatusResponse](OtherLeaveStatusResponse.md)
    year=1.337,
    given_date="''",
    start_date="''",
    end_date="''",
    balance=1.337,
    used_balance=1.337,
    pending_balance=1.337,
    approved_balance=1.337,
    remaining=1.337,
    min_leave_date="''",
    max_leave_date="''",
    active=True,
)
```

### Working with JSON

```python
from catapa import OtherLeaveBalanceItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
other_leave_balance_item_response = OtherLeaveBalanceItemResponse.from_json(json_str)

# Convert to JSON
print(other_leave_balance_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import OtherLeaveBalanceItemResponse

# Convert to/from dictionary
data_dict = other_leave_balance_item_response.to_dict()
other_leave_balance_item_response = OtherLeaveBalanceItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(other_leave_balance_item_response.id)
# Update properties
other_leave_balance_item_response.id = "new_value"
```
