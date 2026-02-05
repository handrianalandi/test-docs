# BpjsHealthcarePremiumDetailsItemResponse

## Properties

| Name                | Type    | Description                                               |
| :------------------ | :------ | :-------------------------------------------------------- |
| `start_cutoff_date` | `str`   |                                                           |
| `end_cutoff_date`   | `str`   |                                                           |
| `company_amount`    | `float` | Value can be null if the date period is not processed yet |
| `employee_amount`   | `float` | Value can be null if the date period is not processed yet |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsHealthcarePremiumDetailsItemResponse

bpjs_healthcare_premium_details_item_response = (
    BpjsHealthcarePremiumDetailsItemResponse(
        start_cutoff_date="''",
        end_cutoff_date="''",
        company_amount=1.337,
        employee_amount=1.337,
    )
)
```

### Working with JSON

```python
from catapa import BpjsHealthcarePremiumDetailsItemResponse

# Parse from JSON
json_str = '{"start_cutoff_date": "example"}'
bpjs_healthcare_premium_details_item_response = (
    BpjsHealthcarePremiumDetailsItemResponse.from_json(json_str)
)

# Convert to JSON
print(bpjs_healthcare_premium_details_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsHealthcarePremiumDetailsItemResponse

# Convert to/from dictionary
data_dict = bpjs_healthcare_premium_details_item_response.to_dict()
bpjs_healthcare_premium_details_item_response = (
    BpjsHealthcarePremiumDetailsItemResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(bpjs_healthcare_premium_details_item_response.start_cutoff_date)
# Update properties
bpjs_healthcare_premium_details_item_response.start_cutoff_date = "new_value"
```
