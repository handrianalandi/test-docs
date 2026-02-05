# JobTitleWithJobLevelsResponse

## Properties

| Name         | Type                                            | Description |
| :----------- | :---------------------------------------------- | :---------- |
| `id`         | `str`                                           |             |
| `code`       | `str`                                           |             |
| `name`       | `str`                                           |             |
| `job_levels` | [`List[JobLevelResponse]`](JobLevelResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import JobTitleWithJobLevelsResponse

job_title_with_job_levels_response = JobTitleWithJobLevelsResponse(
    id="''",
    code="''",
    name="''",
    job_levels=[],  # List[[JobLevelResponse](JobLevelResponse.md)]
)
```

### Working with JSON

```python
from catapa import JobTitleWithJobLevelsResponse

# Parse from JSON
json_str = '{"id": "example"}'
job_title_with_job_levels_response = JobTitleWithJobLevelsResponse.from_json(json_str)

# Convert to JSON
print(job_title_with_job_levels_response.to_json())
```

### Working with dictionaries

```python
from catapa import JobTitleWithJobLevelsResponse

# Convert to/from dictionary
data_dict = job_title_with_job_levels_response.to_dict()
job_title_with_job_levels_response = JobTitleWithJobLevelsResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(job_title_with_job_levels_response.id)
# Update properties
job_title_with_job_levels_response.id = "new_value"
```
