# JobLevelResponse

## Properties

| Name           | Type                                          | Description |
| :------------- | :-------------------------------------------- | :---------- |
| `id`           | `str`                                         |             |
| `code`         | `str`                                         |             |
| `name`         | `str`                                         |             |
| `job_position` | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |
| `level`        | `float`                                       |             |

## Usage Examples

### Creating an instance

```python
from catapa import JobLevelResponse

job_level_response = JobLevelResponse(
    id="''",
    code="''",
    name="''",
    job_position=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    level=1.337,
)
```

### Working with JSON

```python
from catapa import JobLevelResponse

# Parse from JSON
json_str = '{"id": "example"}'
job_level_response = JobLevelResponse.from_json(json_str)

# Convert to JSON
print(job_level_response.to_json())
```

### Working with dictionaries

```python
from catapa import JobLevelResponse

# Convert to/from dictionary
data_dict = job_level_response.to_dict()
job_level_response = JobLevelResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(job_level_response.id)
# Update properties
job_level_response.id = "new_value"
```
