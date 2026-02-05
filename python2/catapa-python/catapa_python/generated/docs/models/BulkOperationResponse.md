# BulkOperationResponse

## Properties

| Name        | Type                                                                    | Description |
| :---------- | :---------------------------------------------------------------------- | :---------- |
| `successes` | [`List[IdResponse]`](IdResponse.md)                                     |             |
| `failures`  | [`List[BulkOperationFailureResponse]`](BulkOperationFailureResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import BulkOperationResponse

bulk_operation_response = BulkOperationResponse(
    successes=[],  # List[[IdResponse](IdResponse.md)]
    failures=[],  # List[[BulkOperationFailureResponse](BulkOperationFailureResponse.md)]
)
```

### Working with JSON

```python
from catapa import BulkOperationResponse

# Parse from JSON
json_str = '{"successes": "example"}'
bulk_operation_response = BulkOperationResponse.from_json(json_str)

# Convert to JSON
print(bulk_operation_response.to_json())
```

### Working with dictionaries

```python
from catapa import BulkOperationResponse

# Convert to/from dictionary
data_dict = bulk_operation_response.to_dict()
bulk_operation_response = BulkOperationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(bulk_operation_response.successes)
# Update properties
bulk_operation_response.successes = new_value
```
