# EmployeeVariableMetadataRequest

## Properties

| Name            | Type                                                                                  | Description | Notes       |
| --------------- | ------------------------------------------------------------------------------------- | ----------- | ----------- |
| **name**        | **str**                                                                               |             |             |
| **type**        | **str**                                                                               |             |             |
| **periodic**    | **bool**                                                                              |             |             |
| **description** | **str**                                                                               |             | \[optional] |
| **validations** | [**List\[EmployeeVariableValidationRequest\]**](employeevariablevalidationrequest.md) |             | \[optional] |

## Example

```python
from catapa import EmployeeVariableMetadataRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeVariableMetadataRequest from a JSON string
employee_variable_metadata_request_instance = EmployeeVariableMetadataRequest.from_json(json)
# print the JSON string representation of the object
print(EmployeeVariableMetadataRequest.to_json())

# convert the object into a dict
employee_variable_metadata_request_dict = employee_variable_metadata_request_instance.to_dict()
# create an instance of EmployeeVariableMetadataRequest from a dict
employee_variable_metadata_request_from_dict = EmployeeVariableMetadataRequest.from_dict(employee_variable_metadata_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
