# CountResponse

## Properties

| Name    | Type  | Description |
| :------ | :---- | :---------- |
| `count` | `int` |             |

## Usage Examples

### Creating an instance

```python
from catapa import CountResponse

count_response = CountResponse(count=56)
```

### Working with JSON

```python
from catapa import CountResponse

# Parse from JSON
json_str = '{"count": "example"}'
count_response = CountResponse.from_json(json_str)

# Convert to JSON
print(count_response.to_json())
```

### Working with dictionaries

```python
from catapa import CountResponse

# Convert to/from dictionary
data_dict = count_response.to_dict()
count_response = CountResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(count_response.count)
# Update properties
count_response.count = new_value
```
