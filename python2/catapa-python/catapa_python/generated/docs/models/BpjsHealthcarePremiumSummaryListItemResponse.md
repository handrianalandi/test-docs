# BpjsHealthcarePremiumSummaryListItemResponse

## Properties

| Name                             | Type    | Description |
| :------------------------------- | :------ | :---------- |
| `id`                             | `str`   |             |
| `employee_identification_number` | `str`   |             |
| `employee_name`                  | `str`   |             |
| `monthly_wage`                   | `float` |             |
| `company_amount`                 | `float` |             |
| `employee_amount`                | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsHealthcarePremiumSummaryListItemResponse

bpjs_healthcare_premium_summary_list_item_response = (
    BpjsHealthcarePremiumSummaryListItemResponse(
        id="''",
        employee_identification_number="''",
        employee_name="''",
        monthly_wage=1.337,
        company_amount=1.337,
        employee_amount=1.337,
    )
)
```

### Working with JSON

```python
from catapa import BpjsHealthcarePremiumSummaryListItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
bpjs_healthcare_premium_summary_list_item_response = (
    BpjsHealthcarePremiumSummaryListItemResponse.from_json(json_str)
)

# Convert to JSON
print(bpjs_healthcare_premium_summary_list_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsHealthcarePremiumSummaryListItemResponse

# Convert to/from dictionary
data_dict = bpjs_healthcare_premium_summary_list_item_response.to_dict()
bpjs_healthcare_premium_summary_list_item_response = (
    BpjsHealthcarePremiumSummaryListItemResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(bpjs_healthcare_premium_summary_list_item_response.id)
# Update properties
bpjs_healthcare_premium_summary_list_item_response.id = "new_value"
```
