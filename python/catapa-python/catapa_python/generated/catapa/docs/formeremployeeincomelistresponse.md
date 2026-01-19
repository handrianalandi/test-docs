# FormerEmployeeIncomeListResponse

## Properties

| Name                     | Type                                                                        | Description                     | Notes       |
| ------------------------ | --------------------------------------------------------------------------- | ------------------------------- | ----------- |
| **total\_pages**         | **int**                                                                     |                                 | \[optional] |
| **last**                 | **bool**                                                                    |                                 | \[optional] |
| **total\_elements**      | **int**                                                                     |                                 | \[optional] |
| **number\_of\_elements** | **int**                                                                     |                                 | \[optional] |
| **has\_content**         | **bool**                                                                    |                                 | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                                 |                                 | \[optional] |
| **first**                | **bool**                                                                    |                                 | \[optional] |
| **size**                 | **int**                                                                     |                                 | \[optional] |
| **number**               | **int**                                                                     |                                 | \[optional] |
| **content**              | [**List\[FormerEmployeeIncomeResponse\]**](formeremployeeincomeresponse.md) | List of former employee incomes | \[optional] |

## Example

```python
from catapa import FormerEmployeeIncomeListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FormerEmployeeIncomeListResponse from a JSON string
former_employee_income_list_response_instance = FormerEmployeeIncomeListResponse.from_json(json)
# print the JSON string representation of the object
print(FormerEmployeeIncomeListResponse.to_json())

# convert the object into a dict
former_employee_income_list_response_dict = former_employee_income_list_response_instance.to_dict()
# create an instance of FormerEmployeeIncomeListResponse from a dict
former_employee_income_list_response_from_dict = FormerEmployeeIncomeListResponse.from_dict(former_employee_income_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
