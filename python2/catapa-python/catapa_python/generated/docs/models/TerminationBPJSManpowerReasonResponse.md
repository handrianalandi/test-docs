# TerminationBPJSManpowerReasonResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `id`   | `str` |             |
| `name` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import TerminationBPJSManpowerReasonResponse

termination_bpjs_manpower_reason_response = TerminationBPJSManpowerReasonResponse(
    id="''", name="''"
)
```

### Working with JSON

```python
from catapa import TerminationBPJSManpowerReasonResponse

# Parse from JSON
json_str = '{"id": "example"}'
termination_bpjs_manpower_reason_response = (
    TerminationBPJSManpowerReasonResponse.from_json(json_str)
)

# Convert to JSON
print(termination_bpjs_manpower_reason_response.to_json())
```

### Working with dictionaries

```python
from catapa import TerminationBPJSManpowerReasonResponse

# Convert to/from dictionary
data_dict = termination_bpjs_manpower_reason_response.to_dict()
termination_bpjs_manpower_reason_response = (
    TerminationBPJSManpowerReasonResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(termination_bpjs_manpower_reason_response.id)
# Update properties
termination_bpjs_manpower_reason_response.id = "new_value"
```
