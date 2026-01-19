# SalaryCalculationListResponse

## Properties

| Name                     | Type                                                                  | Description | Notes       |
| ------------------------ | --------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                               |             | \[optional] |
| **last**                 | **bool**                                                              |             | \[optional] |
| **total\_elements**      | **int**                                                               |             | \[optional] |
| **number\_of\_elements** | **int**                                                               |             | \[optional] |
| **has\_content**         | **bool**                                                              |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                           |             | \[optional] |
| **first**                | **bool**                                                              |             | \[optional] |
| **size**                 | **int**                                                               |             | \[optional] |
| **number**               | **int**                                                               |             | \[optional] |
| **content**              | [**List\[SalaryCalculationResponse\]**](salarycalculationresponse.md) |             | \[optional] |

## Example

```python
from catapa import SalaryCalculationListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryCalculationListResponse from a JSON string
salary_calculation_list_response_instance = SalaryCalculationListResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryCalculationListResponse.to_json())

# convert the object into a dict
salary_calculation_list_response_dict = salary_calculation_list_response_instance.to_dict()
# create an instance of SalaryCalculationListResponse from a dict
salary_calculation_list_response_from_dict = SalaryCalculationListResponse.from_dict(salary_calculation_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
