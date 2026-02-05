# SalaryPaymentEmploymentStatusResponse

## Properties

| Name              | Type                                                      | Description |
| :---------------- | :-------------------------------------------------------- | :---------- |
| `job_title`       | [`NameResponse`](NameResponse.md)                         |             |
| `employment_type` | [`NameResponse`](NameResponse.md)                         |             |
| `cost_center`     | [`CostCenterSimpleResponse`](CostCenterSimpleResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryPaymentEmploymentStatusResponse

salary_payment_employment_status_response = SalaryPaymentEmploymentStatusResponse(
    job_title=None,  # [NameResponse](NameResponse.md)
    employment_type=None,  # [NameResponse](NameResponse.md)
    cost_center=None,  # [CostCenterSimpleResponse](CostCenterSimpleResponse.md)
)
```

### Working with JSON

```python
from catapa import SalaryPaymentEmploymentStatusResponse

# Parse from JSON
json_str = '{"job_title": "example"}'
salary_payment_employment_status_response = (
    SalaryPaymentEmploymentStatusResponse.from_json(json_str)
)

# Convert to JSON
print(salary_payment_employment_status_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryPaymentEmploymentStatusResponse

# Convert to/from dictionary
data_dict = salary_payment_employment_status_response.to_dict()
salary_payment_employment_status_response = (
    SalaryPaymentEmploymentStatusResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(salary_payment_employment_status_response.job_title)
# Update properties
salary_payment_employment_status_response.job_title = new_value
```
