# SalaryPaymentResponse

## Properties

| Name                     | Type                                                                            | Description |
| :----------------------- | :------------------------------------------------------------------------------ | :---------- |
| `id`                     | `str`                                                                           |             |
| `payment_method`         | `str`                                                                           |             |
| `payment_date`           | `str`                                                                           |             |
| `organization`           | [`PositionHistoryOrganizationResponse`](PositionHistoryOrganizationResponse.md) |             |
| `job_level`              | [`NameResponse`](NameResponse.md)                                               |             |
| `job_title`              | [`NameResponse`](NameResponse.md)                                               |             |
| `location`               | [`NameResponse`](NameResponse.md)                                               |             |
| `cost_center`            | [`CostCenterSimpleResponse`](CostCenterSimpleResponse.md)                       |             |
| `employee`               | [`SalaryPaymentEmployeeResponse`](SalaryPaymentEmployeeResponse.md)             |             |
| `salary_payment_details` | [`List[SalaryPaymentDetailResponse]`](SalaryPaymentDetailResponse.md)           |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryPaymentResponse

salary_payment_response = SalaryPaymentResponse(
    id="''",
    payment_method="''",
    payment_date="''",
    organization=None,  # [PositionHistoryOrganizationResponse](PositionHistoryOrganizationResponse.md)
    job_level=None,  # [NameResponse](NameResponse.md)
    job_title=None,  # [NameResponse](NameResponse.md)
    location=None,  # [NameResponse](NameResponse.md)
    cost_center=None,  # [CostCenterSimpleResponse](CostCenterSimpleResponse.md)
    employee=None,  # [SalaryPaymentEmployeeResponse](SalaryPaymentEmployeeResponse.md)
    salary_payment_details=[],  # List[[SalaryPaymentDetailResponse](SalaryPaymentDetailResponse.md)]
)
```

### Working with JSON

```python
from catapa import SalaryPaymentResponse

# Parse from JSON
json_str = '{"id": "example"}'
salary_payment_response = SalaryPaymentResponse.from_json(json_str)

# Convert to JSON
print(salary_payment_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryPaymentResponse

# Convert to/from dictionary
data_dict = salary_payment_response.to_dict()
salary_payment_response = SalaryPaymentResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_payment_response.id)
# Update properties
salary_payment_response.id = "new_value"
```
