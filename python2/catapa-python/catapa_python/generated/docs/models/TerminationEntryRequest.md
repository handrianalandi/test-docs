# TerminationEntryRequest

## Properties

| Name                        | Type   | Required | Description                                                                 |
| :-------------------------- | :----- | :------: | :-------------------------------------------------------------------------- |
| `termination_code`          | `str`  |    ❌    |                                                                             |
| `payroll_method`            | `str`  |    ✅    |                                                                             |
| `termination_reason_id`     | `str`  |    ✅    |                                                                             |
| `request_date`              | `date` |    ✅    | YYYY-MM-DD                                                                  |
| `bpjs_manpower_end_date`    | `date` |    ✅    | YYYY-MM-DD                                                                  |
| `service_period_by`         | `str`  |    ❌    |                                                                             |
| `pph21_membership_end_date` | `date` |    ✅    | YYYY-MM-DD                                                                  |
| `bpjs_healthcare_end_date`  | `date` |    ✅    | YYYY-MM-DD                                                                  |
| `effective_date`            | `date` |    ✅    | YYYY-MM-DD                                                                  |
| `rehire`                    | `bool` |    ✅    | Deprecated field that no longer has any effect on terminated employee pages |

## Usage Examples

### Creating an instance

```python
from catapa import TerminationEntryRequest

termination_entry_request = TerminationEntryRequest(
    termination_code="''",
    payroll_method="'FULL'",
    termination_reason_id="''",
    request_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    bpjs_manpower_end_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    service_period_by="'JOIN_DATE'",
    pph21_membership_end_date=datetime.datetime.strptime(
        "1975-12-30", "%Y-%m-%d"
    ).date(),
    bpjs_healthcare_end_date=datetime.datetime.strptime(
        "1975-12-30", "%Y-%m-%d"
    ).date(),
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    rehire=True,
)
```

### Working with JSON

```python
from catapa import TerminationEntryRequest

# Parse from JSON
json_str = '{"termination_code": "example"}'
termination_entry_request = TerminationEntryRequest.from_json(json_str)

# Convert to JSON
print(termination_entry_request.to_json())
```

### Working with dictionaries

```python
from catapa import TerminationEntryRequest

# Convert to/from dictionary
data_dict = termination_entry_request.to_dict()
termination_entry_request = TerminationEntryRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(termination_entry_request.termination_code)
# Update properties
termination_entry_request.termination_code = "new_value"
```
