# BpjsManpowerProviderResponse

## Properties

| Name                         | Type  | Description |
| :--------------------------- | :---- | :---------- |
| `id`                         | `str` |             |
| `code`                       | `str` |             |
| `name`                       | `str` |             |
| `address`                    | `str` |             |
| `registration_number`        | `str` |             |
| `report_signatory_name`      | `str` |             |
| `report_signatory_job_title` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsManpowerProviderResponse

bpjs_manpower_provider_response = BpjsManpowerProviderResponse(
    id="''",
    code="''",
    name="''",
    address="''",
    registration_number="''",
    report_signatory_name="''",
    report_signatory_job_title="''",
)
```

### Working with JSON

```python
from catapa import BpjsManpowerProviderResponse

# Parse from JSON
json_str = '{"id": "example"}'
bpjs_manpower_provider_response = BpjsManpowerProviderResponse.from_json(json_str)

# Convert to JSON
print(bpjs_manpower_provider_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsManpowerProviderResponse

# Convert to/from dictionary
data_dict = bpjs_manpower_provider_response.to_dict()
bpjs_manpower_provider_response = BpjsManpowerProviderResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(bpjs_manpower_provider_response.id)
# Update properties
bpjs_manpower_provider_response.id = "new_value"
```
