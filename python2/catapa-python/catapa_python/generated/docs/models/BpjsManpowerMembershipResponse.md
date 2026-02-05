# BpjsManpowerMembershipResponse

## Properties

| Name                     | Type                                                              | Description                        |
| :----------------------- | :---------------------------------------------------------------- | :--------------------------------- |
| `id`                     | `str`                                                             | ID of the BPJS Manpower Membership |
| `membership_number`      | `str`                                                             |                                    |
| `start_date`             | `str`                                                             |                                    |
| `end_date`               | `str`                                                             |                                    |
| `effective_date`         | `str`                                                             |                                    |
| `pension_end`            | `str`                                                             |                                    |
| `bpjs_manpower_provider` | [`BpjsManpowerProviderResponse`](BpjsManpowerProviderResponse.md) |                                    |
| `bpjs_manpower_template` | [`BpjsManpowerTemplateResponse`](BpjsManpowerTemplateResponse.md) |                                    |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsManpowerMembershipResponse

bpjs_manpower_membership_response = BpjsManpowerMembershipResponse(
    id="''",
    membership_number="''",
    start_date="''",
    end_date="''",
    effective_date="''",
    pension_end="''",
    bpjs_manpower_provider=None,  # [BpjsManpowerProviderResponse](BpjsManpowerProviderResponse.md)
    bpjs_manpower_template=None,  # [BpjsManpowerTemplateResponse](BpjsManpowerTemplateResponse.md)
)
```

### Working with JSON

```python
from catapa import BpjsManpowerMembershipResponse

# Parse from JSON
json_str = '{"id": "example"}'
bpjs_manpower_membership_response = BpjsManpowerMembershipResponse.from_json(json_str)

# Convert to JSON
print(bpjs_manpower_membership_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsManpowerMembershipResponse

# Convert to/from dictionary
data_dict = bpjs_manpower_membership_response.to_dict()
bpjs_manpower_membership_response = BpjsManpowerMembershipResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(bpjs_manpower_membership_response.id)
# Update properties
bpjs_manpower_membership_response.id = "new_value"
```
