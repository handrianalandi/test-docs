# EmployeeCreateResponse

## Properties

| Name                              | Type                                                    | Description | Notes       |
| --------------------------------- | ------------------------------------------------------- | ----------- | ----------- |
| **id**                            | **str**                                                 |             | \[optional] |
| **marital\_status**               | **str**                                                 |             | \[optional] |
| **religion**                      | [**ReligionResponse**](religionresponse.md)             |             | \[optional] |
| **foreign\_labour**               | **bool**                                                |             | \[optional] |
| **citizenship**                   | **object**                                              |             | \[optional] |
| **identification\_number**        | **str**                                                 |             | \[optional] |
| **name**                          | **str**                                                 |             | \[optional] |
| **date\_of\_birth**               | **str**                                                 |             | \[optional] |
| **place\_of\_birth**              | [**PlaceOfBirthResponse**](placeofbirthresponse.md)     |             | \[optional] |
| **join\_date**                    | **str**                                                 |             | \[optional] |
| **start\_date**                   | **str**                                                 |             | \[optional] |
| **gender**                        | **str**                                                 |             | \[optional] |
| **point\_of\_hire**               | [**PointOfHireResponse**](pointofhireresponse.md)       |             | \[optional] |
| **employment\_status\_number**    | **str**                                                 |             | \[optional] |
| **organization**                  | [**OrganizationResponse**](organizationresponse.md)     |             | \[optional] |
| **job\_title**                    | [**JobTitleResponse**](jobtitleresponse.md)             |             | \[optional] |
| **job\_level**                    | [**JobLevelResponse**](joblevelresponse.md)             |             | \[optional] |
| **location**                      | [**LocationResponse**](locationresponse.md)             |             | \[optional] |
| **employment\_type**              | [**EmploymentTypeResponse**](employmenttyperesponse.md) |             | \[optional] |
| **contract\_start**               | **str**                                                 |             | \[optional] |
| **contract\_end**                 | **str**                                                 |             | \[optional] |
| **identity\_card\_number**        | **str**                                                 |             | \[optional] |
| **identity\_card\_expired\_date** | **date**                                                |             | \[optional] |
| **email**                         | **str**                                                 |             | \[optional] |

## Example

```python
from catapa import EmployeeCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeCreateResponse from a JSON string
employee_create_response_instance = EmployeeCreateResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeCreateResponse.to_json())

# convert the object into a dict
employee_create_response_dict = employee_create_response_instance.to_dict()
# create an instance of EmployeeCreateResponse from a dict
employee_create_response_from_dict = EmployeeCreateResponse.from_dict(employee_create_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
