# BpjsManpowerTemplateResponse

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
from catapa import BpjsManpowerTemplateResponse

bpjs_manpower_template_response = BpjsManpowerTemplateResponse(
    id="''", code="''", name="''", salary_type="''", link_to_payroll=True
)
```

### Working with JSON

```python
from catapa import BpjsManpowerTemplateResponse

# Parse from JSON
json_str = '{"id": "example"}'
bpjs_manpower_template_response = BpjsManpowerTemplateResponse.from_json(json_str)

# Convert to JSON
print(bpjs_manpower_template_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsManpowerTemplateResponse

# Convert to/from dictionary
data_dict = bpjs_manpower_template_response.to_dict()
bpjs_manpower_template_response = BpjsManpowerTemplateResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(bpjs_manpower_template_response.id)
# Update properties
bpjs_manpower_template_response.id = "new_value"
```
