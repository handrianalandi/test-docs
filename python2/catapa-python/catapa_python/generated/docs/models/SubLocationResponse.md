# SubLocationResponse

## Properties

| Name       | Type                                                            | Description |
| :--------- | :-------------------------------------------------------------- | :---------- |
| `id`       | `str`                                                           |             |
| `code`     | `str`                                                           |             |
| `name`     | `str`                                                           |             |
| `location` | [`SubLocationLocationResponse`](SubLocationLocationResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import SubLocationResponse

sub_location_response = SubLocationResponse(
    id="''",
    code="''",
    name="''",
    location=None,  # [SubLocationLocationResponse](SubLocationLocationResponse.md)
)
```

### Working with JSON

```python
from catapa import SubLocationResponse

# Parse from JSON
json_str = '{"id": "example"}'
sub_location_response = SubLocationResponse.from_json(json_str)

# Convert to JSON
print(sub_location_response.to_json())
```

### Working with dictionaries

```python
from catapa import SubLocationResponse

# Convert to/from dictionary
data_dict = sub_location_response.to_dict()
sub_location_response = SubLocationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(sub_location_response.id)
# Update properties
sub_location_response.id = "new_value"
```
