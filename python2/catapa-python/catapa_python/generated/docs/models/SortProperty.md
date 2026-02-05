# SortProperty

## Properties

| Name            | Type   | Required | Description |
| :-------------- | :----- | :------: | :---------- |
| `direction`     | `str`  |    ✅    |             |
| `var_property`  | `str`  |    ✅    |             |
| `ignore_case`   | `bool` |    ❌    |             |
| `null_handling` | `str`  |    ❌    |             |
| `ascending`     | `bool` |    ❌    |             |
| `descending`    | `bool` |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import SortProperty

sort_property = SortProperty(
    direction="''",
    var_property="''",
    ignore_case=True,
    null_handling="''",
    ascending=True,
    descending=True,
)
```

### Working with JSON

```python
from catapa import SortProperty

# Parse from JSON
json_str = '{"direction": "example"}'
sort_property = SortProperty.from_json(json_str)

# Convert to JSON
print(sort_property.to_json())
```

### Working with dictionaries

```python
from catapa import SortProperty

# Convert to/from dictionary
data_dict = sort_property.to_dict()
sort_property = SortProperty.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(sort_property.direction)
# Update properties
sort_property.direction = "new_value"
```
