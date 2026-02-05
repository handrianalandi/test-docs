# BpjsManpowerPremiumDetailsItemResponse

## Properties

| Name                | Type    | Description                                                     |
| :------------------ | :------ | :-------------------------------------------------------------- |
| `start_cutoff_date` | `str`   |                                                                 |
| `end_cutoff_date`   | `str`   |                                                                 |
| `jkk_amount`        | `float` | Amount can be null because the date period is not processed yet |
| `jkm_amount`        | `float` | Amount can be null because the date period is not processed yet |
| `jhtpk_amount`      | `float` | Amount can be null because the date period is not processed yet |
| `jhtp_amount`       | `float` | Amount can be null because the date period is not processed yet |
| `jppk_amount`       | `float` | Amount can be null because the date period is not processed yet |
| `jpp_amount`        | `float` | Amount can be null because the date period is not processed yet |
| `jkp_amount`        | `float` |                                                                 |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsManpowerPremiumDetailsItemResponse

bpjs_manpower_premium_details_item_response = BpjsManpowerPremiumDetailsItemResponse(
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
from catapa import BpjsManpowerPremiumDetailsItemResponse

# Parse from JSON
json_str = '{"start_cutoff_date": "example"}'
bpjs_manpower_premium_details_item_response = (
    BpjsManpowerPremiumDetailsItemResponse.from_json(json_str)
)

# Convert to JSON
print(bpjs_manpower_premium_details_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsManpowerPremiumDetailsItemResponse

# Convert to/from dictionary
data_dict = bpjs_manpower_premium_details_item_response.to_dict()
bpjs_manpower_premium_details_item_response = (
    BpjsManpowerPremiumDetailsItemResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(bpjs_manpower_premium_details_item_response.start_cutoff_date)
# Update properties
bpjs_manpower_premium_details_item_response.start_cutoff_date = "new_value"
```
