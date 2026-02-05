# PayslipAdditionalNoteResponse

## Properties

| Name           | Type  | Description |
| :------------- | :---- | :---------- |
| `id`           | `str` |             |
| `payment_date` | `str` |             |
| `note`         | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import PayslipAdditionalNoteResponse

payslip_additional_note_response = PayslipAdditionalNoteResponse(
    id="''", payment_date="''", note="''"
)
```

### Working with JSON

```python
from catapa import PayslipAdditionalNoteResponse

# Parse from JSON
json_str = '{"id": "example"}'
payslip_additional_note_response = PayslipAdditionalNoteResponse.from_json(json_str)

# Convert to JSON
print(payslip_additional_note_response.to_json())
```

### Working with dictionaries

```python
from catapa import PayslipAdditionalNoteResponse

# Convert to/from dictionary
data_dict = payslip_additional_note_response.to_dict()
payslip_additional_note_response = PayslipAdditionalNoteResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(payslip_additional_note_response.id)
# Update properties
payslip_additional_note_response.id = "new_value"
```
