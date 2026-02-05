# ContactInformationRequest

## Properties

| Name               | Type  | Required | Description             |
| :----------------- | :---- | :------: | :---------------------- |
| `email`            | `str` |    ❌    |                         |
| `mobile_phone`     | `str` |    ❌    | e.g. \`+6281234567890\` |
| `original_address` | `str` |    ❌    |                         |

## Usage Examples

### Creating an instance

```python
from catapa import ContactInformationRequest

contact_information_request = ContactInformationRequest(
    email="''", mobile_phone="'+08988'", original_address="''"
)
```

### Working with JSON

```python
from catapa import ContactInformationRequest

# Parse from JSON
json_str = '{"email": "example"}'
contact_information_request = ContactInformationRequest.from_json(json_str)

# Convert to JSON
print(contact_information_request.to_json())
```

### Working with dictionaries

```python
from catapa import ContactInformationRequest

# Convert to/from dictionary
data_dict = contact_information_request.to_dict()
contact_information_request = ContactInformationRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(contact_information_request.email)
# Update properties
contact_information_request.email = "new_value"
```
