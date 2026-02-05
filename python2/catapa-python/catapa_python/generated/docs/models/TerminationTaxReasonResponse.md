# TerminationTaxReasonResponse

## Properties

| Name             | Type   | Description |
| :--------------- | :----- | :---------- |
| `id`             | `str`  |             |
| `name`           | `str`  |             |
| `tax_annualized` | `bool` |             |

## Usage Examples

### Creating an instance

```python
from catapa import TerminationTaxReasonResponse

termination_tax_reason_response = TerminationTaxReasonResponse(
    id="''", name="''", tax_annualized=True
)
```

### Working with JSON

```python
from catapa import TerminationTaxReasonResponse

# Parse from JSON
json_str = '{"id": "example"}'
termination_tax_reason_response = TerminationTaxReasonResponse.from_json(json_str)

# Convert to JSON
print(termination_tax_reason_response.to_json())
```

### Working with dictionaries

```python
from catapa import TerminationTaxReasonResponse

# Convert to/from dictionary
data_dict = termination_tax_reason_response.to_dict()
termination_tax_reason_response = TerminationTaxReasonResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(termination_tax_reason_response.id)
# Update properties
termination_tax_reason_response.id = "new_value"
```
