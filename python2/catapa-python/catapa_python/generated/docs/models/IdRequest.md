# IdRequest

## Properties

| Name | Type  | Required | Description       |
| :--- | :---- | :------: | :---------------- |
| `id` | `str` |    ✅    | Unique identifier |

## Usage Examples

### Creating an instance

```python
from catapa import IdRequest

id_request = IdRequest(id="''")
```

### Working with JSON

```python
from catapa import IdRequest

# Parse from JSON
json_str = '{"id": "example"}'
id_request = IdRequest.from_json(json_str)

# Convert to JSON
print(id_request.to_json())
```

### Working with dictionaries

```python
from catapa import IdRequest

# Convert to/from dictionary
data_dict = id_request.to_dict()
id_request = IdRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(id_request.id)
# Update properties
id_request.id = "new_value"
```
