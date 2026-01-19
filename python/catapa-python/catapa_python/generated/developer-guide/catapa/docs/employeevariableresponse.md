# EmployeeVariableResponse

## Properties

| Name              | Type                                                    | Description | Notes       |
| ----------------- | ------------------------------------------------------- | ----------- | ----------- |
| **id**            | **str**                                                 |             | \[optional] |
| **employee\_id**  | **str**                                                 |             | \[optional] |
| **employee**      | [**EmployeeSimpleResponse**](employeesimpleresponse.md) |             | \[optional] |
| **name**          | **str**                                                 |             | \[optional] |
| **var\_date**     | **date**                                                |             | \[optional] |
| **value**         | **str**                                                 |             | \[optional] |
| **created\_by**   | **str**                                                 |             | \[optional] |
| **created\_date** | **float**                                               |             | \[optional] |
| **updated\_by**   | **str**                                                 |             | \[optional] |
| **updated\_date** | **float**                                               |             | \[optional] |

## Example

```python
from catapa import EmployeeVariableResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeVariableResponse from a JSON string
employee_variable_response_instance = EmployeeVariableResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeVariableResponse.to_json())

# convert the object into a dict
employee_variable_response_dict = employee_variable_response_instance.to_dict()
# create an instance of EmployeeVariableResponse from a dict
employee_variable_response_from_dict = EmployeeVariableResponse.from_dict(employee_variable_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
