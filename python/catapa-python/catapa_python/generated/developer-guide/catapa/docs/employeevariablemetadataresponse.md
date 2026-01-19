# EmployeeVariableMetadataResponse

## Properties

| Name            | Type                                                                                    | Description | Notes       |
| --------------- | --------------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**          | **str**                                                                                 |             | \[optional] |
| **name**        | **str**                                                                                 |             | \[optional] |
| **type**        | **str**                                                                                 |             | \[optional] |
| **periodic**    | **bool**                                                                                |             | \[optional] |
| **description** | **str**                                                                                 |             | \[optional] |
| **validations** | [**List\[EmployeeVariableValidationResponse\]**](employeevariablevalidationresponse.md) |             | \[optional] |

## Example

```python
from catapa import EmployeeVariableMetadataResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeVariableMetadataResponse from a JSON string
employee_variable_metadata_response_instance = EmployeeVariableMetadataResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeVariableMetadataResponse.to_json())

# convert the object into a dict
employee_variable_metadata_response_dict = employee_variable_metadata_response_instance.to_dict()
# create an instance of EmployeeVariableMetadataResponse from a dict
employee_variable_metadata_response_from_dict = EmployeeVariableMetadataResponse.from_dict(employee_variable_metadata_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
