# EmployeeFullResponse

## Properties

| Name                       | Type                                                      | Description | Notes       |
| -------------------------- | --------------------------------------------------------- | ----------- | ----------- |
| **id**                     | **str**                                                   |             | \[optional] |
| **identification\_number** | **str**                                                   |             | \[optional] |
| **name**                   | **str**                                                   |             | \[optional] |
| **join\_date**             | **date**                                                  | YYYY-MM-DD  | \[optional] |
| **start\_date**            | **date**                                                  | YYYY-MM-DD  | \[optional] |
| **active**                 | **bool**                                                  |             | \[optional] |
| **point\_of\_hire**        | [**PointOfHireResponse**](pointofhireresponse.md)         |             | \[optional] |
| **photo**                  | [**PhotoResponse**](photoresponse.md)                     |             | \[optional] |
| **manager**                | [**EmployeeManagerResponse**](employeemanagerresponse.md) |             | \[optional] |

## Example

```python
from catapa import EmployeeFullResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeFullResponse from a JSON string
employee_full_response_instance = EmployeeFullResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeFullResponse.to_json())

# convert the object into a dict
employee_full_response_dict = employee_full_response_instance.to_dict()
# create an instance of EmployeeFullResponse from a dict
employee_full_response_from_dict = EmployeeFullResponse.from_dict(employee_full_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
