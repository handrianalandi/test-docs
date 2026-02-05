# SubLocationRequest

## Properties

| Name          | Type  | Required | Description        |
| :------------ | :---- | :------: | :----------------- |
| `code`        | `str` |    ✅    |                    |
| `name`        | `str` |    ✅    |                    |
| `location_id` | `str` |    ✅    | Parent location ID |

## Usage Examples

### Creating an instance

```python
from catapa import SubLocationRequest

sub_location_request = SubLocationRequest(code="'0'", name="'0'", location_id="''")
```

### Working with JSON

```python
from catapa import SubLocationRequest

# Parse from JSON
json_str = '{"code": "example"}'
sub_location_request = SubLocationRequest.from_json(json_str)

# Convert to JSON
print(sub_location_request.to_json())
```

### Working with dictionaries

```python
from catapa import SubLocationRequest

# Convert to/from dictionary
data_dict = sub_location_request.to_dict()
sub_location_request = SubLocationRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(sub_location_request.code)
# Update properties
sub_location_request.code = "new_value"
```
