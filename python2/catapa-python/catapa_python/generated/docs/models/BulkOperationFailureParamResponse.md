# BulkOperationFailureParamResponse

## Properties

| Name     | Type  | Description |
| :------- | :---- | :---------- |
| `id`     | `str` |             |
| `reason` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import BulkOperationFailureParamResponse

bulk_operation_failure_param_response = BulkOperationFailureParamResponse(
    id="''", reason="''"
)
```

### Working with JSON

```python
from catapa import BulkOperationFailureParamResponse

# Parse from JSON
json_str = '{"id": "example"}'
bulk_operation_failure_param_response = BulkOperationFailureParamResponse.from_json(
    json_str
)

# Convert to JSON
print(bulk_operation_failure_param_response.to_json())
```

### Working with dictionaries

```python
from catapa import BulkOperationFailureParamResponse

# Convert to/from dictionary
data_dict = bulk_operation_failure_param_response.to_dict()
bulk_operation_failure_param_response = BulkOperationFailureParamResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(bulk_operation_failure_param_response.id)
# Update properties
bulk_operation_failure_param_response.id = "new_value"
```
