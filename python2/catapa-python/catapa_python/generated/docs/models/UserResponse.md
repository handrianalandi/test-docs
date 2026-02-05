# UserResponse

## Properties

| Name       | Type                                              | Description                   |
| :--------- | :------------------------------------------------ | :---------------------------- |
| `id`       | `str`                                             | Unique identifier of the user |
| `username` | `str`                                             | Username of the user          |
| `email`    | `str`                                             | Email address of the user     |
| `employee` | [`EmployeeFullResponse`](EmployeeFullResponse.md) |                               |

## Usage Examples

### Creating an instance

```python
from catapa import UserResponse

user_response = UserResponse(
    id="''",
    username="''",
    email="''",
    employee=None,  # [EmployeeFullResponse](EmployeeFullResponse.md)
)
```

### Working with JSON

```python
from catapa import UserResponse

# Parse from JSON
json_str = '{"id": "example"}'
user_response = UserResponse.from_json(json_str)

# Convert to JSON
print(user_response.to_json())
```

### Working with dictionaries

```python
from catapa import UserResponse

# Convert to/from dictionary
data_dict = user_response.to_dict()
user_response = UserResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(user_response.id)
# Update properties
user_response.id = "new_value"
```
