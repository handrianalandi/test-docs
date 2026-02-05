# TimeZoneResponse

## Properties

| Name     | Type  | Description |
| :------- | :---- | :---------- |
| `code`   | `str` |             |
| `offset` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import TimeZoneResponse

time_zone_response = TimeZoneResponse(code="''", offset="''")
```

### Working with JSON

```python
from catapa import TimeZoneResponse

# Parse from JSON
json_str = '{"code": "example"}'
time_zone_response = TimeZoneResponse.from_json(json_str)

# Convert to JSON
print(time_zone_response.to_json())
```

### Working with dictionaries

```python
from catapa import TimeZoneResponse

# Convert to/from dictionary
data_dict = time_zone_response.to_dict()
time_zone_response = TimeZoneResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(time_zone_response.code)
# Update properties
time_zone_response.code = "new_value"
```
