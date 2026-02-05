# BpjsHealthcareTemplateListItemResponse

## Properties

| Name              | Type   | Description |
| :---------------- | :----- | :---------- |
| `id`              | `str`  |             |
| `code`            | `str`  |             |
| `name`            | `str`  |             |
| `salary_type`     | `str`  |             |
| `link_to_payroll` | `bool` |             |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsHealthcareTemplateListItemResponse

bpjs_healthcare_template_list_item_response = BpjsHealthcareTemplateListItemResponse(
    id="''", code="''", name="''", salary_type="''", link_to_payroll=True
)
```

### Working with JSON

```python
from catapa import BpjsHealthcareTemplateListItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
bpjs_healthcare_template_list_item_response = (
    BpjsHealthcareTemplateListItemResponse.from_json(json_str)
)

# Convert to JSON
print(bpjs_healthcare_template_list_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsHealthcareTemplateListItemResponse

# Convert to/from dictionary
data_dict = bpjs_healthcare_template_list_item_response.to_dict()
bpjs_healthcare_template_list_item_response = (
    BpjsHealthcareTemplateListItemResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(bpjs_healthcare_template_list_item_response.id)
# Update properties
bpjs_healthcare_template_list_item_response.id = "new_value"
```
