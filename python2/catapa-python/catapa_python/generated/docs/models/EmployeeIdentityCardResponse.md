# EmployeeIdentityCardResponse

## Properties

| Name                   | Type                                              | Description |
| :--------------------- | :------------------------------------------------ | :---------- |
| `id`                   | `str`                                             |             |
| `identity_card`        | [`IdentityCardResponse`](IdentityCardResponse.md) |             |
| `identity_card_number` | `str`                                             |             |
| `expired_date`         | `str`                                             |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeIdentityCardResponse

employee_identity_card_response = EmployeeIdentityCardResponse(
    id="''",
    identity_card=None,  # [IdentityCardResponse](IdentityCardResponse.md)
    identity_card_number="''",
    expired_date="''",
)
```

### Working with JSON

```python
from catapa import EmployeeIdentityCardResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_identity_card_response = EmployeeIdentityCardResponse.from_json(json_str)

# Convert to JSON
print(employee_identity_card_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeIdentityCardResponse

# Convert to/from dictionary
data_dict = employee_identity_card_response.to_dict()
employee_identity_card_response = EmployeeIdentityCardResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_identity_card_response.id)
# Update properties
employee_identity_card_response.id = "new_value"
```
