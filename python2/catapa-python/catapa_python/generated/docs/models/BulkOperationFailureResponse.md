# BulkOperationFailureResponse

## Properties

| Name      | Type                                                                        | Description |
| :-------- | :-------------------------------------------------------------------------- | :---------- |
| `code`    | `str`                                                                       |             |
| `message` | `str`                                                                       |             |
| `params`  | [`BulkOperationFailureParamResponse`](BulkOperationFailureParamResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import BulkOperationFailureResponse

bulk_operation_failure_response = BulkOperationFailureResponse(
    code="''",
    message="''",
    params=None,  # [BulkOperationFailureParamResponse](BulkOperationFailureParamResponse.md)
)
```

### Working with JSON

```python
from catapa import BulkOperationFailureResponse

# Parse from JSON
json_str = '{"code": "example"}'
bulk_operation_failure_response = BulkOperationFailureResponse.from_json(json_str)

# Convert to JSON
print(bulk_operation_failure_response.to_json())
```

### Working with dictionaries

```python
from catapa import BulkOperationFailureResponse

# Convert to/from dictionary
data_dict = bulk_operation_failure_response.to_dict()
bulk_operation_failure_response = BulkOperationFailureResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(bulk_operation_failure_response.code)
# Update properties
bulk_operation_failure_response.code = "new_value"
```
