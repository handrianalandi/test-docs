# JobTitleLevelMappingResponse

## Properties

| Name        | Type                                      | Description |
| :---------- | :---------------------------------------- | :---------- |
| `job_title` | [`JobTitleResponse`](JobTitleResponse.md) |             |
| `job_level` | [`JobLevelResponse`](JobLevelResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import JobTitleLevelMappingResponse

job_title_level_mapping_response = JobTitleLevelMappingResponse(
    job_title=None,  # [JobTitleResponse](JobTitleResponse.md)
    job_level=None,  # [JobLevelResponse](JobLevelResponse.md)
)
```

### Working with JSON

```python
from catapa import JobTitleLevelMappingResponse

# Parse from JSON
json_str = '{"job_title": "example"}'
job_title_level_mapping_response = JobTitleLevelMappingResponse.from_json(json_str)

# Convert to JSON
print(job_title_level_mapping_response.to_json())
```

### Working with dictionaries

```python
from catapa import JobTitleLevelMappingResponse

# Convert to/from dictionary
data_dict = job_title_level_mapping_response.to_dict()
job_title_level_mapping_response = JobTitleLevelMappingResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(job_title_level_mapping_response.job_title)
# Update properties
job_title_level_mapping_response.job_title = new_value
```
