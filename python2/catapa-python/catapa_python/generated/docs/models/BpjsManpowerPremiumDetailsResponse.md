# BpjsManpowerPremiumDetailsResponse

## Properties

| Name                             | Type                                                                                        | Description         |
| :------------------------------- | :------------------------------------------------------------------------------------------ | :------------------ |
| `employee_id`                    | `str`                                                                                       |                     |
| `employee_identification_number` | `str`                                                                                       |                     |
| `employee_name`                  | `str`                                                                                       |                     |
| `monthly_wage`                   | `float`                                                                                     |                     |
| `current_month_detail`           | [`BpjsManpowerCurrentMonthDetailResponse`](BpjsManpowerCurrentMonthDetailResponse.md)       |                     |
| `details`                        | [`List[BpjsManpowerPremiumDetailsItemResponse]`](BpjsManpowerPremiumDetailsItemResponse.md) | Possible empty list |

## Usage Examples

### Creating an instance

```python
from catapa import BpjsManpowerPremiumDetailsResponse

bpjs_manpower_premium_details_response = BpjsManpowerPremiumDetailsResponse(
    employee_id="''",
    employee_identification_number="''",
    employee_name="''",
    monthly_wage=1.337,
    current_month_detail=None,  # [BpjsManpowerCurrentMonthDetailResponse](BpjsManpowerCurrentMonthDetailResponse.md)
    details=[],  # List[[BpjsManpowerPremiumDetailsItemResponse](BpjsManpowerPremiumDetailsItemResponse.md)]
)
```

### Working with JSON

```python
from catapa import BpjsManpowerPremiumDetailsResponse

# Parse from JSON
json_str = '{"employee_id": "example"}'
bpjs_manpower_premium_details_response = BpjsManpowerPremiumDetailsResponse.from_json(
    json_str
)

# Convert to JSON
print(bpjs_manpower_premium_details_response.to_json())
```

### Working with dictionaries

```python
from catapa import BpjsManpowerPremiumDetailsResponse

# Convert to/from dictionary
data_dict = bpjs_manpower_premium_details_response.to_dict()
bpjs_manpower_premium_details_response = BpjsManpowerPremiumDetailsResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(bpjs_manpower_premium_details_response.employee_id)
# Update properties
bpjs_manpower_premium_details_response.employee_id = "new_value"
```
