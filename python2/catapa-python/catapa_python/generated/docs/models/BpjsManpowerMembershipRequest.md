# BpjsManpowerMembershipRequest

## Properties

| Name                        | Type  | Required | Description                                                                |
| :-------------------------- | :---- | :------: | :------------------------------------------------------------------------- |
| `bpjs_manpower_provider_id` | `str` |    ✅    |                                                                            |
| `bpjs_manpower_template_id` | `str` |    ✅    |                                                                            |
| `membership_number`         | `str` |    ❌    |                                                                            |
| `start_date`                | `str` |    ✅    |                                                                            |
| `effective_date`            | `str` |    ❌    | Effective Date of the BPJS Manpower Membership default value is start date |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsManpowerMembershipRequest

bpjs_manpower_membership_request = BpjsManpowerMembershipRequest(
    bpjs_manpower_provider_id="''",
    bpjs_manpower_template_id="''",
    membership_number="''",
    start_date="''",
    effective_date="''",
)
```

### Working with JSON

```python
from catapa import BpjsManpowerMembershipRequest

# Parse from JSON
json_str = '{"bpjs_manpower_provider_id": "example"}'
bpjs_manpower_membership_request = BpjsManpowerMembershipRequest.from_json(json_str)

# Convert to JSON
print(bpjs_manpower_membership_request.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsManpowerMembershipRequest

# Convert to/from dictionary
data_dict = bpjs_manpower_membership_request.to_dict()
bpjs_manpower_membership_request = BpjsManpowerMembershipRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(bpjs_manpower_membership_request.bpjs_manpower_provider_id)
# Update properties
bpjs_manpower_membership_request.bpjs_manpower_provider_id = "new_value"
```
