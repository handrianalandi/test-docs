# EmployeeManagerResponse

## Properties

| Name                       | Type                                              | Description | Notes       |
| -------------------------- | ------------------------------------------------- | ----------- | ----------- |
| **id**                     | **str**                                           |             | \[optional] |
| **identification\_number** | **str**                                           |             | \[optional] |
| **name**                   | **str**                                           |             | \[optional] |
| **join\_date**             | **date**                                          | YYYY-MM-DD  | \[optional] |
| **start\_date**            | **date**                                          | YYYY-MM-DD  | \[optional] |
| **active**                 | **bool**                                          |             | \[optional] |
| **point\_of\_hire**        | [**PointOfHireResponse**](pointofhireresponse.md) |             | \[optional] |
| **photo**                  | [**PhotoResponse**](photoresponse.md)             |             | \[optional] |

## Example

```python
from catapa import EmployeeManagerResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeManagerResponse from a JSON string
employee_manager_response_instance = EmployeeManagerResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeManagerResponse.to_json())

# convert the object into a dict
employee_manager_response_dict = employee_manager_response_instance.to_dict()
# create an instance of EmployeeManagerResponse from a dict
employee_manager_response_from_dict = EmployeeManagerResponse.from_dict(employee_manager_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
