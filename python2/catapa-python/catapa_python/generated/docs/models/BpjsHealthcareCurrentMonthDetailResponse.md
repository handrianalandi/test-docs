# BpjsHealthcareCurrentMonthDetailResponse

## Properties

| Name                | Type    | Description |
| :------------------ | :------ | :---------- |
| `start_cutoff_date` | `str`   |             |
| `end_cutoff_date`   | `str`   |             |
| `company_amount`    | `float` |             |
| `employee_amount`   | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsHealthcareCurrentMonthDetailResponse

bpjs_healthcare_current_month_detail_response = (
    BpjsHealthcareCurrentMonthDetailResponse(
        start_cutoff_date="''",
        end_cutoff_date="''",
        company_amount=1.337,
        employee_amount=1.337,
    )
)
```

### Working with JSON

```python
from catapa import BpjsHealthcareCurrentMonthDetailResponse

# Parse from JSON
json_str = '{"start_cutoff_date": "example"}'
bpjs_healthcare_current_month_detail_response = (
    BpjsHealthcareCurrentMonthDetailResponse.from_json(json_str)
)

# Convert to JSON
print(bpjs_healthcare_current_month_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsHealthcareCurrentMonthDetailResponse

# Convert to/from dictionary
data_dict = bpjs_healthcare_current_month_detail_response.to_dict()
bpjs_healthcare_current_month_detail_response = (
    BpjsHealthcareCurrentMonthDetailResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(bpjs_healthcare_current_month_detail_response.start_cutoff_date)
# Update properties
bpjs_healthcare_current_month_detail_response.start_cutoff_date = "new_value"
```
