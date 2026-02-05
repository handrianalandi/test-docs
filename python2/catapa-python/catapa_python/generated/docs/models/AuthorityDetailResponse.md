# AuthorityDetailResponse

## Properties

| Name          | Type  | Description                           |
| :------------ | :---- | :------------------------------------ |
| `id`          | `str` | Authority identifier                  |
| `code`        | `str` | Authority code                        |
| `name`        | `str` | Authority name                        |
| `description` | `str` | Authority description                 |
| `module_name` | `str` | Module name this authority belongs to |

## Usage Examples

### Creating an instance

```python
from catapa import AuthorityDetailResponse

authority_detail_response = AuthorityDetailResponse(
    id="''", code="''", name="''", description="''", module_name="''"
)
```

### Working with JSON

```python
from catapa import AuthorityDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
authority_detail_response = AuthorityDetailResponse.from_json(json_str)

# Convert to JSON
print(authority_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import AuthorityDetailResponse

# Convert to/from dictionary
data_dict = authority_detail_response.to_dict()
authority_detail_response = AuthorityDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(authority_detail_response.id)
# Update properties
authority_detail_response.id = "new_value"
```
