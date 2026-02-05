# ContactInformationResponse

## Properties

| Name                            | Type                                                      | Description |
| :------------------------------ | :-------------------------------------------------------- | :---------- |
| `id`                            | `str`                                                     |             |
| `mobile_phone`                  | `str`                                                     |             |
| `email`                         | `str`                                                     | deprecated  |
| `work_email`                    | `str`                                                     |             |
| `personal_email`                | `str`                                                     |             |
| `original_address`              | `str`                                                     |             |
| `original_address_phone_number` | `str`                                                     |             |
| `original_address_detail`       | [`AddressDetailResponse`](AddressDetailResponse.md)       |             |
| `facebook`                      | `str`                                                     |             |
| `linked_in`                     | `str`                                                     |             |
| `effective_date`                | `date`                                                    | YYYY-MM-DD  |
| `created_by`                    | `str`                                                     |             |
| `created_date`                  | `float`                                                   |             |
| `updated_by`                    | `str`                                                     |             |
| `updated_date`                  | `float`                                                   |             |
| `residential_address`           | [`AddressDetailResponse`](AddressDetailResponse.md)       |             |
| `emergency_contact`             | [`EmergencyContactResponse`](EmergencyContactResponse.md) |             |
| `employee`                      | [`EmployeeFullResponse`](EmployeeFullResponse.md)         |             |

## Usage Examples

### Creating an instance

```python
from catapa import ContactInformationResponse

contact_information_response = ContactInformationResponse(
    id="''",
    mobile_phone="''",
    email="''",
    work_email="''",
    personal_email="''",
    original_address="''",
    original_address_phone_number="''",
    original_address_detail=None,  # [AddressDetailResponse](AddressDetailResponse.md)
    facebook="''",
    linked_in="''",
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
    residential_address=None,  # [AddressDetailResponse](AddressDetailResponse.md)
    emergency_contact=None,  # [EmergencyContactResponse](EmergencyContactResponse.md)
    employee=None,  # [EmployeeFullResponse](EmployeeFullResponse.md)
)
```

### Working with JSON

```python
from catapa import ContactInformationResponse

# Parse from JSON
json_str = '{"id": "example"}'
contact_information_response = ContactInformationResponse.from_json(json_str)

# Convert to JSON
print(contact_information_response.to_json())
```

### Working with dictionaries

```python
from catapa import ContactInformationResponse

# Convert to/from dictionary
data_dict = contact_information_response.to_dict()
contact_information_response = ContactInformationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(contact_information_response.id)
# Update properties
contact_information_response.id = "new_value"
```
