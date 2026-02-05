# TerminationEntryResponse

## Properties

| Name                        | Type                                                        | Description |
| :-------------------------- | :---------------------------------------------------------- | :---------- |
| `id`                        | `str`                                                       |             |
| `termination_code`          | `str`                                                       |             |
| `effective_date`            | `str`                                                       |             |
| `payroll_method`            | `str`                                                       |             |
| `termination_reason`        | [`TerminationReasonResponse`](TerminationReasonResponse.md) |             |
| `bpjs_manpower_end_date`    | `str`                                                       |             |
| `bpjs_healthcare_end_date`  | `str`                                                       |             |
| `pph21_membership_end_date` | `str`                                                       |             |
| `request_date`              | `str`                                                       |             |
| `service_period_by`         | `str`                                                       |             |
| `rehire`                    | `bool`                                                      |             |
| `approval_status`           | `str`                                                       |             |

## Usage Examples

### Creating an instance

```python
from catapa import TerminationEntryResponse

termination_entry_response = TerminationEntryResponse(
    id="''",
    termination_code="''",
    effective_date="''",
    payroll_method="''",
    termination_reason=None,  # [TerminationReasonResponse](TerminationReasonResponse.md)
    bpjs_manpower_end_date="''",
    bpjs_healthcare_end_date="''",
    pph21_membership_end_date="''",
    request_date="''",
    service_period_by="''",
    rehire=True,
    approval_status="'APPROVED'",
)
```

### Working with JSON

```python
from catapa import TerminationEntryResponse

# Parse from JSON
json_str = '{"id": "example"}'
termination_entry_response = TerminationEntryResponse.from_json(json_str)

# Convert to JSON
print(termination_entry_response.to_json())
```

### Working with dictionaries

```python
from catapa import TerminationEntryResponse

# Convert to/from dictionary
data_dict = termination_entry_response.to_dict()
termination_entry_response = TerminationEntryResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(termination_entry_response.id)
# Update properties
termination_entry_response.id = "new_value"
```
