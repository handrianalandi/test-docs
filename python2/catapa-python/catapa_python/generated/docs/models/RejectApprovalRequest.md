# RejectApprovalRequest

## Properties

| Name     | Type  | Required | Description         |
| :------- | :---- | :------: | :------------------ |
| `id`     | `str` |    ✅    | Approval ID         |
| `reason` | `str` |    ✅    | Reason of Rejection |

## Usage Examples

### Creating an instance

```python
from catapa import RejectApprovalRequest

reject_approval_request = RejectApprovalRequest(id="''", reason="''")
```

### Working with JSON

```python
from catapa import RejectApprovalRequest

# Parse from JSON
json_str = '{"id": "example"}'
reject_approval_request = RejectApprovalRequest.from_json(json_str)

# Convert to JSON
print(reject_approval_request.to_json())
```

### Working with dictionaries

```python
from catapa import RejectApprovalRequest

# Convert to/from dictionary
data_dict = reject_approval_request.to_dict()
reject_approval_request = RejectApprovalRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(reject_approval_request.id)
# Update properties
reject_approval_request.id = "new_value"
```
