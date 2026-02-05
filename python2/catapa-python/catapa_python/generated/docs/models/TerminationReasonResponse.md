# TerminationReasonResponse

## Properties

| Name                               | Type   | Description |
| :--------------------------------- | :----- | :---------- |
| `id`                               | `UUID` |             |
| `name`                             | `str`  |             |
| `termination_pph21_reason`         | `str`  |             |
| `termination_bpjs_manpower_reason` | `str`  |             |
| `termination_reason_category`      | `str`  |             |
| `severance`                        | `bool` |             |

## Usage Examples

### Creating an instance

```python
from catapa import TerminationReasonResponse

termination_reason_response = TerminationReasonResponse(
    id="''",
    name="''",
    termination_pph21_reason="''",
    termination_bpjs_manpower_reason="''",
    termination_reason_category="''",
    severance=True,
)
```

### Working with JSON

```python
from catapa import TerminationReasonResponse

# Parse from JSON
json_str = '{"id": "example"}'
termination_reason_response = TerminationReasonResponse.from_json(json_str)

# Convert to JSON
print(termination_reason_response.to_json())
```

### Working with dictionaries

```python
from catapa import TerminationReasonResponse

# Convert to/from dictionary
data_dict = termination_reason_response.to_dict()
termination_reason_response = TerminationReasonResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(termination_reason_response.id)
# Update properties
termination_reason_response.id = "new_value"
```
