# LeaveBalanceItemResponse

## Properties

| Name                             | Type                                                  | Description |
| :------------------------------- | :---------------------------------------------------- | :---------- |
| `id`                             | `str`                                                 |             |
| `year`                           | `float`                                               |             |
| `accrual_frequency_type`         | `str`                                                 |             |
| `monthly_accrual_include_bonus`  | `bool`                                                |             |
| `given_date`                     | `str`                                                 |             |
| `start_date`                     | `str`                                                 |             |
| `end_date`                       | `str`                                                 |             |
| `expected_balance`               | `float`                                               |             |
| `balance`                        | `float`                                               |             |
| `bonus`                          | `float`                                               |             |
| `debt`                           | `float`                                               |             |
| `extended`                       | `bool`                                                |             |
| `maximum_extended_duration`      | `float`                                               |             |
| `maximum_extended_balance`       | `float`                                               |             |
| `extended_balance_include_bonus` | `bool`                                                |             |
| `total_balance`                  | `float`                                               |             |
| `used_leave`                     | `float`                                               |             |
| `active`                         | `bool`                                                |             |
| `employee`                       | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md) |             |
| `approved_leave`                 | `float`                                               |             |
| `pending_leave`                  | `float`                                               |             |
| `collective_leave`               | `float`                                               |             |
| `remaining`                      | `float`                                               |             |
| `extended_date`                  | `str`                                                 |             |
| `extended_balance`               | `float`                                               |             |
| `extended_used_leave`            | `float`                                               |             |
| `extended_collective_leave`      | `float`                                               |             |
| `extended_available`             | `float`                                               |             |
| `extended_remaining`             | `float`                                               |             |
| `extended_approved_leave`        | `float`                                               |             |
| `extended_pending_leave`         | `float`                                               |             |

## Usage Examples

### Creating an instance

```python
from catapa import LeaveBalanceItemResponse

leave_balance_item_response = LeaveBalanceItemResponse(
    id="''",
    year=1.337,
    accrual_frequency_type="''",
    monthly_accrual_include_bonus=True,
    given_date="''",
    start_date="''",
    end_date="''",
    expected_balance=1.337,
    balance=1.337,
    bonus=1.337,
    debt=1.337,
    extended=True,
    maximum_extended_duration=1.337,
    maximum_extended_balance=1.337,
    extended_balance_include_bonus=True,
    total_balance=1.337,
    used_leave=1.337,
    active=True,
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    approved_leave=1.337,
    pending_leave=1.337,
    collective_leave=1.337,
    remaining=1.337,
    extended_date="''",
    extended_balance=1.337,
    extended_used_leave=1.337,
    extended_collective_leave=1.337,
    extended_available=1.337,
    extended_remaining=1.337,
    extended_approved_leave=1.337,
    extended_pending_leave=1.337,
)
```

### Working with JSON

```python
from catapa import LeaveBalanceItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
leave_balance_item_response = LeaveBalanceItemResponse.from_json(json_str)

# Convert to JSON
print(leave_balance_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import LeaveBalanceItemResponse

# Convert to/from dictionary
data_dict = leave_balance_item_response.to_dict()
leave_balance_item_response = LeaveBalanceItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(leave_balance_item_response.id)
# Update properties
leave_balance_item_response.id = "new_value"
```
