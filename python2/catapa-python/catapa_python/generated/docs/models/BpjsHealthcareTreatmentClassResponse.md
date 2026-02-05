# BpjsHealthcareTreatmentClassResponse

## Properties

| Name               | Type  | Description |
| :----------------- | :---- | :---------- |
| `id`               | `str` |             |
| `name`             | `str` |             |
| `min_salary_type`  | `str` |             |
| `min_salary_value` | `str` |             |
| `max_salary_type`  | `str` |             |
| `max_salary_value` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsHealthcareTreatmentClassResponse

bpjs_healthcare_treatment_class_response = BpjsHealthcareTreatmentClassResponse(
    id="''",
    name="''",
    min_salary_type="''",
    min_salary_value="''",
    max_salary_type="''",
    max_salary_value="''",
)
```

### Working with JSON

```python
from catapa import BpjsHealthcareTreatmentClassResponse

# Parse from JSON
json_str = '{"id": "example"}'
bpjs_healthcare_treatment_class_response = (
    BpjsHealthcareTreatmentClassResponse.from_json(json_str)
)

# Convert to JSON
print(bpjs_healthcare_treatment_class_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsHealthcareTreatmentClassResponse

# Convert to/from dictionary
data_dict = bpjs_healthcare_treatment_class_response.to_dict()
bpjs_healthcare_treatment_class_response = (
    BpjsHealthcareTreatmentClassResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(bpjs_healthcare_treatment_class_response.id)
# Update properties
bpjs_healthcare_treatment_class_response.id = "new_value"
```
