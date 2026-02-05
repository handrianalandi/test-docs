# PositionResponse

## Properties

| Name             | Type                                              | Description |
| :--------------- | :------------------------------------------------ | :---------- |
| `id`             | `str`                                             |             |
| `code`           | `str`                                             |             |
| `name`           | `str`                                             |             |
| `organization`   | [`OrganizationResponse`](OrganizationResponse.md) |             |
| `job_title`      | [`JobTitleResponse`](JobTitleResponse.md)         |             |
| `job_level`      | [`JobLevelResponse`](JobLevelResponse.md)         |             |
| `cost_center`    | [`CostCenterResponse`](CostCenterResponse.md)     |             |
| `location`       | [`LocationResponse`](LocationResponse.md)         |             |
| `assigned`       | `bool`                                            |             |
| `effective_date` | `str`                                             |             |
| `end_date`       | `str`                                             |             |

## Usage Examples

### Creating an instance

```python
from catapa import PositionResponse

position_response = PositionResponse(
    id="''",
    code="''",
    name="''",
    organization=None,  # [OrganizationResponse](OrganizationResponse.md)
    job_title=None,  # [JobTitleResponse](JobTitleResponse.md)
    job_level=None,  # [JobLevelResponse](JobLevelResponse.md)
    cost_center=None,  # [CostCenterResponse](CostCenterResponse.md)
    location=None,  # [LocationResponse](LocationResponse.md)
    assigned=True,
    effective_date="''",
    end_date="''",
)
```

### Working with JSON

```python
from catapa import PositionResponse

# Parse from JSON
json_str = '{"id": "example"}'
position_response = PositionResponse.from_json(json_str)

# Convert to JSON
print(position_response.to_json())
```

### Working with dictionaries

```python
from catapa import PositionResponse

# Convert to/from dictionary
data_dict = position_response.to_dict()
position_response = PositionResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(position_response.id)
# Update properties
position_response.id = "new_value"
```
