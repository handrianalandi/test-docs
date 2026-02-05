# EmployeeVariableMetadataRequest

## Properties

| Name          | Type                                                                              | Required | Description |
| :------------ | :-------------------------------------------------------------------------------- | :------: | :---------- |
| `name`        | `str`                                                                             |    ✅    |             |
| `type`        | `str`                                                                             |    ✅    |             |
| `periodic`    | `bool`                                                                            |    ✅    |             |
| `description` | `str`                                                                             |    ❌    |             |
| `validations` | [`List[EmployeeVariableValidationRequest]`](EmployeeVariableValidationRequest.md) |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeVariableMetadataRequest

employee_variable_metadata_request = EmployeeVariableMetadataRequest(
    name="''",
    type="'STRING'",
    periodic=True,
    description="''",
    validations=[],  # List[[EmployeeVariableValidationRequest](EmployeeVariableValidationRequest.md)]
)
```

### Working with JSON

```python
from catapa import EmployeeVariableMetadataRequest

# Parse from JSON
json_str = '{"name": "example"}'
employee_variable_metadata_request = EmployeeVariableMetadataRequest.from_json(json_str)

# Convert to JSON
print(employee_variable_metadata_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeVariableMetadataRequest

# Convert to/from dictionary
data_dict = employee_variable_metadata_request.to_dict()
employee_variable_metadata_request = EmployeeVariableMetadataRequest.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(employee_variable_metadata_request.name)
# Update properties
employee_variable_metadata_request.name = "new_value"
```
