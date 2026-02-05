# AdditionalAssignmentApprovaleSubLocationResponse

## Properties

| Name       | Type                                          | Description |
| :--------- | :-------------------------------------------- | :---------- |
| `id`       | `str`                                         |             |
| `code`     | `str`                                         |             |
| `name`     | `str`                                         |             |
| `location` | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import AdditionalAssignmentApprovaleSubLocationResponse

additional_assignment_approvale_sub_location_response = (
    AdditionalAssignmentApprovaleSubLocationResponse(
        id="''",
        code="''",
        name="''",
        location=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    )
)
```

### Working with JSON

```python
from catapa import AdditionalAssignmentApprovaleSubLocationResponse

# Parse from JSON
json_str = '{"id": "example"}'
additional_assignment_approvale_sub_location_response = (
    AdditionalAssignmentApprovaleSubLocationResponse.from_json(json_str)
)

# Convert to JSON
print(additional_assignment_approvale_sub_location_response.to_json())
```

### Working with dictionaries

```python
from catapa import AdditionalAssignmentApprovaleSubLocationResponse

# Convert to/from dictionary
data_dict = additional_assignment_approvale_sub_location_response.to_dict()
additional_assignment_approvale_sub_location_response = (
    AdditionalAssignmentApprovaleSubLocationResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(additional_assignment_approvale_sub_location_response.id)
# Update properties
additional_assignment_approvale_sub_location_response.id = "new_value"
```
