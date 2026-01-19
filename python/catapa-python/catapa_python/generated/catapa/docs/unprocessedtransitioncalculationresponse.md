# UnprocessedTransitionCalculationResponse

## Properties

| Name                                    | Type                                                                                                              | Description | Notes       |
| --------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **cost\_center**                        | [**NameResponse**](nameresponse.md)                                                                               |             | \[optional] |
| **employee**                            | [**EmployeeSimpleResponse**](employeesimpleresponse.md)                                                           |             | \[optional] |
| **employee\_salary\_template\_history** | [**TransitionCalculationEmployeeSalaryTemplateResponse**](transitioncalculationemployeesalarytemplateresponse.md) |             | \[optional] |
| **employee\_workday**                   | **float**                                                                                                         |             | \[optional] |
| **employment\_type**                    | [**NameResponse**](nameresponse.md)                                                                               |             | \[optional] |
| **end\_date**                           | **str**                                                                                                           |             | \[optional] |
| **id**                                  | **str**                                                                                                           |             | \[optional] |
| **job\_title**                          | [**NameResponse**](nameresponse.md)                                                                               |             | \[optional] |
| **location**                            | [**NameResponse**](nameresponse.md)                                                                               |             | \[optional] |
| **normal\_workday**                     | **float**                                                                                                         |             | \[optional] |
| **organization**                        | [**NameResponse**](nameresponse.md)                                                                               |             | \[optional] |
| **payment\_process**                    | **bool**                                                                                                          |             | \[optional] |
| **start\_date**                         | **str**                                                                                                           |             | \[optional] |
| **total\_thp**                          | **float**                                                                                                         |             | \[optional] |

## Example

```python
from catapa import UnprocessedTransitionCalculationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UnprocessedTransitionCalculationResponse from a JSON string
unprocessed_transition_calculation_response_instance = UnprocessedTransitionCalculationResponse.from_json(json)
# print the JSON string representation of the object
print(UnprocessedTransitionCalculationResponse.to_json())

# convert the object into a dict
unprocessed_transition_calculation_response_dict = unprocessed_transition_calculation_response_instance.to_dict()
# create an instance of UnprocessedTransitionCalculationResponse from a dict
unprocessed_transition_calculation_response_from_dict = UnprocessedTransitionCalculationResponse.from_dict(unprocessed_transition_calculation_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
