# JobTitleRequestDeprecated

## Properties

| Name               | Type  | Required | Description |
| :----------------- | :---- | :------: | :---------- |
| `code`             | `str` |    ✅    |             |
| `name`             | `str` |    ✅    |             |
| `min_job_level_id` | `str` |    ❌    |             |
| `max_job_level_id` | `str` |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import JobTitleRequestDeprecated

job_title_request_deprecated = JobTitleRequestDeprecated(
    code="'0'", name="'0'", min_job_level_id="''", max_job_level_id="''"
)
```

### Working with JSON

```python
from catapa import JobTitleRequestDeprecated

# Parse from JSON
json_str = '{"code": "example"}'
job_title_request_deprecated = JobTitleRequestDeprecated.from_json(json_str)

# Convert to JSON
print(job_title_request_deprecated.to_json())
```

### Working with dictionaries

```python
from catapa import JobTitleRequestDeprecated

# Convert to/from dictionary
data_dict = job_title_request_deprecated.to_dict()
job_title_request_deprecated = JobTitleRequestDeprecated.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(job_title_request_deprecated.code)
# Update properties
job_title_request_deprecated.code = "new_value"
```
