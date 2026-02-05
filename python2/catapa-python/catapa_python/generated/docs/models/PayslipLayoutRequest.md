# PayslipLayoutRequest

## Properties

| Name             | Type  | Required | Description |
| :--------------- | :---- | :------: | :---------- |
| `html`           | `str` |    ✅    |             |
| `section`        | `str` |    ✅    |             |
| `effective_date` | `str` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import PayslipLayoutRequest

payslip_layout_request = PayslipLayoutRequest(
    html="''", section="''", effective_date="''"
)
```

### Working with JSON

```python
from catapa import PayslipLayoutRequest

# Parse from JSON
json_str = '{"html": "example"}'
payslip_layout_request = PayslipLayoutRequest.from_json(json_str)

# Convert to JSON
print(payslip_layout_request.to_json())
```

### Working with dictionaries

```python
from catapa import PayslipLayoutRequest

# Convert to/from dictionary
data_dict = payslip_layout_request.to_dict()
payslip_layout_request = PayslipLayoutRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(payslip_layout_request.html)
# Update properties
payslip_layout_request.html = "new_value"
```
