# EmployeeVariableMetadataResponse

## Properties

| Name          | Type                                                                                | Description |
| :------------ | :---------------------------------------------------------------------------------- | :---------- |
| `id`          | `str`                                                                               |             |
| `name`        | `str`                                                                               |             |
| `type`        | `str`                                                                               |             |
| `periodic`    | `bool`                                                                              |             |
| `description` | `str`                                                                               |             |
| `validations` | [`List[EmployeeVariableValidationResponse]`](EmployeeVariableValidationResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeVariableMetadataResponse

employee_variable_metadata_response = EmployeeVariableMetadataResponse(
    id="''",
    name="''",
    type="'STRING'",
    periodic=True,
    description="''",
    validations=[],  # List[[EmployeeVariableValidationResponse](EmployeeVariableValidationResponse.md)]
)
```

### Working with JSON

```python
from catapa import EmployeeVariableMetadataResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_variable_metadata_response = EmployeeVariableMetadataResponse.from_json(
    json_str
)

# Convert to JSON
print(employee_variable_metadata_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeVariableMetadataResponse

# Convert to/from dictionary
data_dict = employee_variable_metadata_response.to_dict()
employee_variable_metadata_response = EmployeeVariableMetadataResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(employee_variable_metadata_response.id)
# Update properties
employee_variable_metadata_response.id = "new_value"
```
