# ProcessedSalaryPaymentResponse

## Properties

| Name                     | Type                                                                                    | Description |
| :----------------------- | :-------------------------------------------------------------------------------------- | :---------- |
| `employee_id`            | `str`                                                                                   |             |
| `location_group_code`    | `str`                                                                                   |             |
| `payment_date`           | `str`                                                                                   |             |
| `salary_payment_details` | [`List[ProcessedSalaryPaymentDetailResponse]`](ProcessedSalaryPaymentDetailResponse.md) |             |
| `total_thp`              | `float`                                                                                 |             |

## Usage Examples

### Creating an instance

```python
from catapa import ProcessedSalaryPaymentResponse

processed_salary_payment_response = ProcessedSalaryPaymentResponse(
    employee_id="''",
    location_group_code="''",
    payment_date="''",
    salary_payment_details=[],  # List[[ProcessedSalaryPaymentDetailResponse](ProcessedSalaryPaymentDetailResponse.md)]
    total_thp=1.337,
)
```

### Working with JSON

```python
from catapa import ProcessedSalaryPaymentResponse

# Parse from JSON
json_str = '{"employee_id": "example"}'
processed_salary_payment_response = ProcessedSalaryPaymentResponse.from_json(json_str)

# Convert to JSON
print(processed_salary_payment_response.to_json())
```

### Working with dictionaries

```python
from catapa import ProcessedSalaryPaymentResponse

# Convert to/from dictionary
data_dict = processed_salary_payment_response.to_dict()
processed_salary_payment_response = ProcessedSalaryPaymentResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(processed_salary_payment_response.employee_id)
# Update properties
processed_salary_payment_response.employee_id = "new_value"
```
