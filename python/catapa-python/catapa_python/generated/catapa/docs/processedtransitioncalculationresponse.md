# ProcessedTransitionCalculationResponse

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
| **messages**                            | [**List\[UnprocessableMessage\]**](unprocessablemessage.md)                                                       |             | \[optional] |
| **normal\_workday**                     | **float**                                                                                                         |             | \[optional] |
| **organization**                        | [**NameResponse**](nameresponse.md)                                                                               |             | \[optional] |
| **payment\_process**                    | **bool**                                                                                                          |             | \[optional] |
| **start\_date**                         | **str**                                                                                                           |             | \[optional] |
| **total\_thp**                          | **float**                                                                                                         |             | \[optional] |

## Example

```python
from catapa import ProcessedTransitionCalculationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessedTransitionCalculationResponse from a JSON string
processed_transition_calculation_response_instance = ProcessedTransitionCalculationResponse.from_json(json)
# print the JSON string representation of the object
print(ProcessedTransitionCalculationResponse.to_json())

# convert the object into a dict
processed_transition_calculation_response_dict = processed_transition_calculation_response_instance.to_dict()
# create an instance of ProcessedTransitionCalculationResponse from a dict
processed_transition_calculation_response_from_dict = ProcessedTransitionCalculationResponse.from_dict(processed_transition_calculation_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
