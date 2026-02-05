# ManagerRequest

## Properties

| Name         | Type  | Required | Description |
| :----------- | :---- | :------: | :---------- |
| `manager_id` | `str` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import ManagerRequest

manager_request = ManagerRequest(manager_id="''")
```

### Working with JSON

```python
from catapa import ManagerRequest

# Parse from JSON
json_str = '{"manager_id": "example"}'
manager_request = ManagerRequest.from_json(json_str)

# Convert to JSON
print(manager_request.to_json())
```

### Working with dictionaries

```python
from catapa import ManagerRequest

# Convert to/from dictionary
data_dict = manager_request.to_dict()
manager_request = ManagerRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(manager_request.manager_id)
# Update properties
manager_request.manager_id = "new_value"
```
