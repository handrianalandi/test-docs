# BpjsHealthcareProviderListItemResponse

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
from catapa import BpjsHealthcareProviderListItemResponse

bpjs_healthcare_provider_list_item_response = BpjsHealthcareProviderListItemResponse(
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
from catapa import BpjsHealthcareProviderListItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
bpjs_healthcare_provider_list_item_response = (
    BpjsHealthcareProviderListItemResponse.from_json(json_str)
)

# Convert to JSON
print(bpjs_healthcare_provider_list_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsHealthcareProviderListItemResponse

# Convert to/from dictionary
data_dict = bpjs_healthcare_provider_list_item_response.to_dict()
bpjs_healthcare_provider_list_item_response = (
    BpjsHealthcareProviderListItemResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(bpjs_healthcare_provider_list_item_response.id)
# Update properties
bpjs_healthcare_provider_list_item_response.id = "new_value"
```
