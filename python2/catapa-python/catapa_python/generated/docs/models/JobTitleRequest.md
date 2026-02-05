# JobTitleRequest

## Properties

| Name         | Type                              | Required | Description |
| :----------- | :-------------------------------- | :------: | :---------- |
| `code`       | `str`                             |    ✅    |             |
| `name`       | `str`                             |    ✅    |             |
| `job_levels` | [`List[IdRequest]`](IdRequest.md) |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import JobTitleRequest

job_title_request = JobTitleRequest(
    code="'0'", name="'0'", job_levels=[]  # List[[IdRequest](IdRequest.md)]
)
```

### Working with JSON

```python
from catapa import JobTitleRequest

# Parse from JSON
json_str = '{"code": "example"}'
job_title_request = JobTitleRequest.from_json(json_str)

# Convert to JSON
print(job_title_request.to_json())
```

### Working with dictionaries

```python
from catapa import JobTitleRequest

# Convert to/from dictionary
data_dict = job_title_request.to_dict()
job_title_request = JobTitleRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(job_title_request.code)
# Update properties
job_title_request.code = "new_value"
```
