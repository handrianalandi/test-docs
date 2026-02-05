# TerminationReasonRequest

## Properties

| Name                   | Type                        | Required | Description        |
| :--------------------- | :-------------------------- | :------: | :----------------- |
| `name`                 | `str`                       |    ✅    |                    |
| `tax_reason`           | [`IdRequest`](IdRequest.md) |    ✅    |                    |
| `bpjs_manpower_reason` | [`IdRequest`](IdRequest.md) |    ✅    |                    |
| `reason_category`      | [`IdRequest`](IdRequest.md) |    ✅    |                    |
| `severance`            | `bool`                      |    ❌    | (default: `False`) |

## Usage Examples

### Creating an instance

```python
from catapa import TerminationReasonRequest

termination_reason_request = TerminationReasonRequest(
    name="'0'",
    tax_reason=None,  # [IdRequest](IdRequest.md)
    bpjs_manpower_reason=None,  # [IdRequest](IdRequest.md)
    reason_category=None,  # [IdRequest](IdRequest.md)
    severance=True,
)
```

### Working with JSON

```python
from catapa import TerminationReasonRequest

# Parse from JSON
json_str = '{"name": "example"}'
termination_reason_request = TerminationReasonRequest.from_json(json_str)

# Convert to JSON
print(termination_reason_request.to_json())
```

### Working with dictionaries

```python
from catapa import TerminationReasonRequest

# Convert to/from dictionary
data_dict = termination_reason_request.to_dict()
termination_reason_request = TerminationReasonRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(termination_reason_request.name)
# Update properties
termination_reason_request.name = "new_value"
```
