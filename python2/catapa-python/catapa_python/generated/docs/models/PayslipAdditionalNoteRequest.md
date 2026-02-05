# PayslipAdditionalNoteRequest

## Properties

| Name           | Type  | Required | Description    |
| :------------- | :---- | :------: | :------------- |
| `payment_date` | `str` |    ✅    |                |
| `note`         | `str` |    ✅    | Max length 150 |

## Usage Examples

### Creating an instance

```python
from catapa import PayslipAdditionalNoteRequest

payslip_additional_note_request = PayslipAdditionalNoteRequest(
    payment_date="''", note="''"
)
```

### Working with JSON

```python
from catapa import PayslipAdditionalNoteRequest

# Parse from JSON
json_str = '{"payment_date": "example"}'
payslip_additional_note_request = PayslipAdditionalNoteRequest.from_json(json_str)

# Convert to JSON
print(payslip_additional_note_request.to_json())
```

### Working with dictionaries

```python
from catapa import PayslipAdditionalNoteRequest

# Convert to/from dictionary
data_dict = payslip_additional_note_request.to_dict()
payslip_additional_note_request = PayslipAdditionalNoteRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(payslip_additional_note_request.payment_date)
# Update properties
payslip_additional_note_request.payment_date = "new_value"
```
