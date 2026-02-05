# JobTitleResponse

## Properties

| Name            | Type                                      | Description |
| :-------------- | :---------------------------------------- | :---------- |
| `id`            | `str`                                     |             |
| `name`          | `str`                                     |             |
| `code`          | `str`                                     |             |
| `min_job_level` | [`JobLevelResponse`](JobLevelResponse.md) |             |
| `max_job_level` | [`JobLevelResponse`](JobLevelResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import JobTitleResponse

job_title_response = JobTitleResponse(
    id="''",
    name="''",
    code="''",
    min_job_level=None,  # [JobLevelResponse](JobLevelResponse.md)
    max_job_level=None,  # [JobLevelResponse](JobLevelResponse.md)
)
```

### Working with JSON

```python
from catapa import JobTitleResponse

# Parse from JSON
json_str = '{"id": "example"}'
job_title_response = JobTitleResponse.from_json(json_str)

# Convert to JSON
print(job_title_response.to_json())
```

### Working with dictionaries

```python
from catapa import JobTitleResponse

# Convert to/from dictionary
data_dict = job_title_response.to_dict()
job_title_response = JobTitleResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(job_title_response.id)
# Update properties
job_title_response.id = "new_value"
```
