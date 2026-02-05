# EmployeeIdentityCardRequest

## Properties

| Name                   | Type   | Required | Description  |
| :--------------------- | :----- | :------: | :----------- |
| `identity_card_id`     | `str`  |    ✅    |              |
| `identity_card_number` | `str`  |    ✅    | Alphanumeric |
| `expired_date`         | `date` |    ❌    |              |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeIdentityCardRequest

employee_identity_card_request = EmployeeIdentityCardRequest(
    identity_card_id="''",
    identity_card_number="'C0'",
    expired_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
)
```

### Working with JSON

```python
from catapa import EmployeeIdentityCardRequest

# Parse from JSON
json_str = '{"identity_card_id": "example"}'
employee_identity_card_request = EmployeeIdentityCardRequest.from_json(json_str)

# Convert to JSON
print(employee_identity_card_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeIdentityCardRequest

# Convert to/from dictionary
data_dict = employee_identity_card_request.to_dict()
employee_identity_card_request = EmployeeIdentityCardRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_identity_card_request.identity_card_id)
# Update properties
employee_identity_card_request.identity_card_id = "new_value"
```
