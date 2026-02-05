# JobLevelRequest

## Properties

| Name              | Type    | Required | Description |
| :---------------- | :------ | :------: | :---------- |
| `code`            | `str`   |    ✅    |             |
| `level`           | `float` |    ✅    |             |
| `job_position_id` | `str`   |    ❌    |             |
| `name`            | `str`   |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import JobLevelRequest

job_level_request = JobLevelRequest(
    code="'0'", level=1, job_position_id="''", name="'0'"
)
```

### Working with JSON

```python
from catapa import JobLevelRequest

# Parse from JSON
json_str = '{"code": "example"}'
job_level_request = JobLevelRequest.from_json(json_str)

# Convert to JSON
print(job_level_request.to_json())
```

### Working with dictionaries

```python
from catapa import JobLevelRequest

# Convert to/from dictionary
data_dict = job_level_request.to_dict()
job_level_request = JobLevelRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(job_level_request.code)
# Update properties
job_level_request.code = "new_value"
```
