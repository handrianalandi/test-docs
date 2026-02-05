# Pph21PolicyResponse

## Properties

| Name                       | Type   | Description |
| :------------------------- | :----- | :---------- |
| `id`                       | `str`  |             |
| `link_to_payroll`          | `bool` |             |
| `pph21_form_format_number` | `str`  |             |
| `pph21_method`             | `str`  |             |

## Usage Examples

### Creating an instance

```python
from catapa import Pph21PolicyResponse

pph21_policy_response = Pph21PolicyResponse(
    id="''", link_to_payroll=True, pph21_form_format_number="''", pph21_method="''"
)
```

### Working with JSON

```python
from catapa import Pph21PolicyResponse

# Parse from JSON
json_str = '{"id": "example"}'
pph21_policy_response = Pph21PolicyResponse.from_json(json_str)

# Convert to JSON
print(pph21_policy_response.to_json())
```

### Working with dictionaries

```python
from catapa import Pph21PolicyResponse

# Convert to/from dictionary
data_dict = pph21_policy_response.to_dict()
pph21_policy_response = Pph21PolicyResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(pph21_policy_response.id)
# Update properties
pph21_policy_response.id = "new_value"
```
