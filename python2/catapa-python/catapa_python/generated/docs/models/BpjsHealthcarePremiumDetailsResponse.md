# BpjsHealthcarePremiumDetailsResponse

## Properties

| Name                             | Type                                                                                            | Description |
| :------------------------------- | :---------------------------------------------------------------------------------------------- | :---------- |
| `employee_id`                    | `str`                                                                                           |             |
| `employee_identification_number` | `str`                                                                                           |             |
| `employee_name`                  | `str`                                                                                           |             |
| `monthly_wage`                   | `float`                                                                                         |             |
| `current_month_detail`           | [`BpjsHealthcareCurrentMonthDetailResponse`](BpjsHealthcareCurrentMonthDetailResponse.md)       |             |
| `details`                        | [`List[BpjsHealthcarePremiumDetailsItemResponse]`](BpjsHealthcarePremiumDetailsItemResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsHealthcarePremiumDetailsResponse

bpjs_healthcare_premium_details_response = BpjsHealthcarePremiumDetailsResponse(
    employee_id="''",
    employee_identification_number="''",
    employee_name="''",
    monthly_wage=1.337,
    current_month_detail=None,  # [BpjsHealthcareCurrentMonthDetailResponse](BpjsHealthcareCurrentMonthDetailResponse.md)
    details=[],  # List[[BpjsHealthcarePremiumDetailsItemResponse](BpjsHealthcarePremiumDetailsItemResponse.md)]
)
```

### Working with JSON

```python
from catapa import BpjsHealthcarePremiumDetailsResponse

# Parse from JSON
json_str = '{"employee_id": "example"}'
bpjs_healthcare_premium_details_response = (
    BpjsHealthcarePremiumDetailsResponse.from_json(json_str)
)

# Convert to JSON
print(bpjs_healthcare_premium_details_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsHealthcarePremiumDetailsResponse

# Convert to/from dictionary
data_dict = bpjs_healthcare_premium_details_response.to_dict()
bpjs_healthcare_premium_details_response = (
    BpjsHealthcarePremiumDetailsResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(bpjs_healthcare_premium_details_response.employee_id)
# Update properties
bpjs_healthcare_premium_details_response.employee_id = "new_value"
```
