# EmployeeHiringDataResponse

## Properties

| Name                       | Type                                                      | Description | Notes       |
| -------------------------- | --------------------------------------------------------- | ----------- | ----------- |
| **id**                     | **str**                                                   |             | \[optional] |
| **identification\_number** | **str**                                                   |             | \[optional] |
| **join\_date**             | **date**                                                  |             | \[optional] |
| **name**                   | **str**                                                   |             | \[optional] |
| **start\_date**            | **date**                                                  |             | \[optional] |
| **point\_of\_hire**        | [**PointOfHireResponse**](pointofhireresponse.md)         |             | \[optional] |
| **photo**                  | [**PhotoResponse**](photoresponse.md)                     |             | \[optional] |
| **manager**                | [**EmployeeManagerResponse**](employeemanagerresponse.md) |             | \[optional] |

## Example

```python
from catapa import EmployeeHiringDataResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeHiringDataResponse from a JSON string
employee_hiring_data_response_instance = EmployeeHiringDataResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeHiringDataResponse.to_json())

# convert the object into a dict
employee_hiring_data_response_dict = employee_hiring_data_response_instance.to_dict()
# create an instance of EmployeeHiringDataResponse from a dict
employee_hiring_data_response_from_dict = EmployeeHiringDataResponse.from_dict(employee_hiring_data_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
