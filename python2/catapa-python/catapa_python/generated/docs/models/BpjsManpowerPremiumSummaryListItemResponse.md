# BpjsManpowerPremiumSummaryListItemResponse

## Properties

| Name                             | Type    | Description |
| :------------------------------- | :------ | :---------- |
| `id`                             | `str`   |             |
| `employee_identification_number` | `str`   |             |
| `employee_name`                  | `str`   |             |
| `monthly_wage`                   | `float` |             |
| `jkk_amount`                     | `float` |             |
| `jkm_amount`                     | `float` |             |
| `jhtpk_amount`                   | `float` |             |
| `jhtp_amount`                    | `float` |             |
| `jppk_amount`                    | `float` |             |
| `jpp_amount`                     | `float` |             |
| `jkp_amount`                     | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsManpowerPremiumSummaryListItemResponse

bpjs_manpower_premium_summary_list_item_response = (
    BpjsManpowerPremiumSummaryListItemResponse(
        id="''",
        employee_identification_number="''",
        employee_name="''",
        monthly_wage=1.337,
        jkk_amount=1.337,
        jkm_amount=1.337,
        jhtpk_amount=1.337,
        jhtp_amount=1.337,
        jppk_amount=1.337,
        jpp_amount=1.337,
        jkp_amount=1.337,
    )
)
```

### Working with JSON

```python
from catapa import BpjsManpowerPremiumSummaryListItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
bpjs_manpower_premium_summary_list_item_response = (
    BpjsManpowerPremiumSummaryListItemResponse.from_json(json_str)
)

# Convert to JSON
print(bpjs_manpower_premium_summary_list_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsManpowerPremiumSummaryListItemResponse

# Convert to/from dictionary
data_dict = bpjs_manpower_premium_summary_list_item_response.to_dict()
bpjs_manpower_premium_summary_list_item_response = (
    BpjsManpowerPremiumSummaryListItemResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(bpjs_manpower_premium_summary_list_item_response.id)
# Update properties
bpjs_manpower_premium_summary_list_item_response.id = "new_value"
```
