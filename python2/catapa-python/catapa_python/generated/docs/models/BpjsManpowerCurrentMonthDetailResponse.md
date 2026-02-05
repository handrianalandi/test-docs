# BpjsManpowerCurrentMonthDetailResponse

## Properties

| Name                | Type    | Description |
| :------------------ | :------ | :---------- |
| `start_cutoff_date` | `str`   |             |
| `end_cutoff_date`   | `str`   |             |
| `jkk_amount`        | `float` |             |
| `jkm_amount`        | `float` |             |
| `jhtpk_amount`      | `float` |             |
| `jhtp_amount`       | `float` |             |
| `jppk_amount`       | `float` |             |
| `jpp_amount`        | `float` |             |
| `jkp_amount`        | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsManpowerCurrentMonthDetailResponse

bpjs_manpower_current_month_detail_response = BpjsManpowerCurrentMonthDetailResponse(
    start_cutoff_date="''",
    end_cutoff_date="''",
    jkk_amount=1.337,
    jkm_amount=1.337,
    jhtpk_amount=1.337,
    jhtp_amount=1.337,
    jppk_amount=1.337,
    jpp_amount=1.337,
    jkp_amount=1.337,
)
```

### Working with JSON

```python
from catapa import BpjsManpowerCurrentMonthDetailResponse

# Parse from JSON
json_str = '{"start_cutoff_date": "example"}'
bpjs_manpower_current_month_detail_response = (
    BpjsManpowerCurrentMonthDetailResponse.from_json(json_str)
)

# Convert to JSON
print(bpjs_manpower_current_month_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsManpowerCurrentMonthDetailResponse

# Convert to/from dictionary
data_dict = bpjs_manpower_current_month_detail_response.to_dict()
bpjs_manpower_current_month_detail_response = (
    BpjsManpowerCurrentMonthDetailResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(bpjs_manpower_current_month_detail_response.start_cutoff_date)
# Update properties
bpjs_manpower_current_month_detail_response.start_cutoff_date = "new_value"
```
