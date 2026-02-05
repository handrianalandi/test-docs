# EmergencyContactResponse

## Properties

| Name       | Type  | Description |
| :--------- | :---- | :---------- |
| `name`     | `str` |             |
| `relation` | `str` |             |
| `phone`    | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmergencyContactResponse

emergency_contact_response = EmergencyContactResponse(
    name="''", relation="''", phone="''"
)
```

### Working with JSON

```python
from catapa import EmergencyContactResponse

# Parse from JSON
json_str = '{"name": "example"}'
emergency_contact_response = EmergencyContactResponse.from_json(json_str)

# Convert to JSON
print(emergency_contact_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmergencyContactResponse

# Convert to/from dictionary
data_dict = emergency_contact_response.to_dict()
emergency_contact_response = EmergencyContactResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(emergency_contact_response.name)
# Update properties
emergency_contact_response.name = "new_value"
```
