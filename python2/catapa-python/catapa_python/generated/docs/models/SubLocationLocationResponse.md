# SubLocationLocationResponse

## Properties

| Name      | Type                                          | Description |
| :-------- | :-------------------------------------------- | :---------- |
| `id`      | `str`                                         |             |
| `code`    | `str`                                         |             |
| `name`    | `str`                                         |             |
| `company` | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import SubLocationLocationResponse

sub_location_location_response = SubLocationLocationResponse(
    id="''",
    code="''",
    name="''",
    company=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import SubLocationLocationResponse

# Parse from JSON
json_str = '{"id": "example"}'
sub_location_location_response = SubLocationLocationResponse.from_json(json_str)

# Convert to JSON
print(sub_location_location_response.to_json())
```

### Working with dictionaries

```python
from catapa import SubLocationLocationResponse

# Convert to/from dictionary
data_dict = sub_location_location_response.to_dict()
sub_location_location_response = SubLocationLocationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(sub_location_location_response.id)
# Update properties
sub_location_location_response.id = "new_value"
```
