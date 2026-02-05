# ShiftResponse

## Properties

| Name              | Type    | Description |
| :---------------- | :------ | :---------- |
| `id`              | `str`   |             |
| `code`            | `str`   |             |
| `name`            | `str`   |             |
| `time_in`         | `str`   |             |
| `time_out`        | `str`   |             |
| `time_in_utc`     | `float` |             |
| `time_out_utc`    | `float` |             |
| `break_start_utc` | `float` |             |
| `break_end_utc`   | `float` |             |
| `color`           | `str`   |             |

## Usage Examples

### Creating an instance

```python
from catapa import ShiftResponse

shift_response = ShiftResponse(
    id="''",
    code="''",
    name="''",
    time_in="''",
    time_out="''",
    time_in_utc=1.337,
    time_out_utc=1.337,
    break_start_utc=1.337,
    break_end_utc=1.337,
    color="''",
)
```

### Working with JSON

```python
from catapa import ShiftResponse

# Parse from JSON
json_str = '{"id": "example"}'
shift_response = ShiftResponse.from_json(json_str)

# Convert to JSON
print(shift_response.to_json())
```

### Working with dictionaries

```python
from catapa import ShiftResponse

# Convert to/from dictionary
data_dict = shift_response.to_dict()
shift_response = ShiftResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(shift_response.id)
# Update properties
shift_response.id = "new_value"
```
