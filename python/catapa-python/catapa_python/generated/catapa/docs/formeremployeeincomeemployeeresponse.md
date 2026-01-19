# FormerEmployeeIncomeEmployeeResponse

## Properties

| Name                         | Type                                                                | Description                        | Notes       |
| ---------------------------- | ------------------------------------------------------------------- | ---------------------------------- | ----------- |
| **id**                       | **str**                                                             | Former employee income employee ID | \[optional] |
| **former\_employee\_income** | [**FormerEmployeeIncomeResponse**](formeremployeeincomeresponse.md) |                                    | \[optional] |
| **employee**                 | [**EmployeeSimpleResponse**](employeesimpleresponse.md)             |                                    | \[optional] |
| **amount**                   | **float**                                                           | Income amount                      | \[optional] |
| **last\_working\_date**      | **date**                                                            | Last working date                  | \[optional] |
| **payment\_date**            | **date**                                                            | Payment date                       | \[optional] |
| **payment\_method**          | **str**                                                             | Payment method                     | \[optional] |
| **total\_thp**               | **float**                                                           | Total take home pay                | \[optional] |
| **original\_tax**            | **float**                                                           | Original tax amount                | \[optional] |
| **penalty\_tax**             | **float**                                                           | Penalty tax amount                 | \[optional] |
| **tax\_allowance**           | **float**                                                           | Tax allowance amount               | \[optional] |

## Example

```python
from catapa import FormerEmployeeIncomeEmployeeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FormerEmployeeIncomeEmployeeResponse from a JSON string
former_employee_income_employee_response_instance = FormerEmployeeIncomeEmployeeResponse.from_json(json)
# print the JSON string representation of the object
print(FormerEmployeeIncomeEmployeeResponse.to_json())

# convert the object into a dict
former_employee_income_employee_response_dict = former_employee_income_employee_response_instance.to_dict()
# create an instance of FormerEmployeeIncomeEmployeeResponse from a dict
former_employee_income_employee_response_from_dict = FormerEmployeeIncomeEmployeeResponse.from_dict(former_employee_income_employee_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
