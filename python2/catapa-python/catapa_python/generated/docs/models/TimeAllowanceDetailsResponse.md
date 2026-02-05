# TimeAllowanceDetailsResponse

## Properties

| Name                        | Type                                                                  | Description |
| :-------------------------- | :-------------------------------------------------------------------- | :---------- |
| `salary_calculation_detail` | [`IdResponse`](IdResponse.md)                                         |             |
| `time_allowance_details`    | [`List[TimeAllowanceDetailResponse]`](TimeAllowanceDetailResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import TimeAllowanceDetailsResponse

time_allowance_details_response = TimeAllowanceDetailsResponse(
    salary_calculation_detail=None,  # [IdResponse](IdResponse.md)
    time_allowance_details=[],  # List[[TimeAllowanceDetailResponse](TimeAllowanceDetailResponse.md)]
)
```

### Working with JSON

```python
from catapa import TimeAllowanceDetailsResponse

# Parse from JSON
json_str = '{"salary_calculation_detail": "example"}'
time_allowance_details_response = TimeAllowanceDetailsResponse.from_json(json_str)

# Convert to JSON
print(time_allowance_details_response.to_json())
```

### Working with dictionaries

```python
from catapa import TimeAllowanceDetailsResponse

# Convert to/from dictionary
data_dict = time_allowance_details_response.to_dict()
time_allowance_details_response = TimeAllowanceDetailsResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(time_allowance_details_response.salary_calculation_detail)
# Update properties
time_allowance_details_response.salary_calculation_detail = new_value
```
