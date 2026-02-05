# PayslipLayoutResponse

## Properties

| Name             | Type  | Description |
| :--------------- | :---- | :---------- |
| `id`             | `str` |             |
| `html`           | `str` |             |
| `section`        | `str` |             |
| `effective_date` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import PayslipLayoutResponse

payslip_layout_response = PayslipLayoutResponse(
    id="''", html="''", section="''", effective_date="''"
)
```

### Working with JSON

```python
from catapa import PayslipLayoutResponse

# Parse from JSON
json_str = '{"id": "example"}'
payslip_layout_response = PayslipLayoutResponse.from_json(json_str)

# Convert to JSON
print(payslip_layout_response.to_json())
```

### Working with dictionaries

```python
from catapa import PayslipLayoutResponse

# Convert to/from dictionary
data_dict = payslip_layout_response.to_dict()
payslip_layout_response = PayslipLayoutResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(payslip_layout_response.id)
# Update properties
payslip_layout_response.id = "new_value"
```
