# UnprocessableMessage

## Properties

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `code`        | `str` |    ❌    |             |
| `description` | `str` |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import UnprocessableMessage

unprocessable_message = UnprocessableMessage(code="''", description="''")
```

### Working with JSON

```python
from catapa import UnprocessableMessage

# Parse from JSON
json_str = '{"code": "example"}'
unprocessable_message = UnprocessableMessage.from_json(json_str)

# Convert to JSON
print(unprocessable_message.to_json())
```

### Working with dictionaries

```python
from catapa import UnprocessableMessage

# Convert to/from dictionary
data_dict = unprocessable_message.to_dict()
unprocessable_message = UnprocessableMessage.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(unprocessable_message.code)
# Update properties
unprocessable_message.code = "new_value"
```
