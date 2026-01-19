# SalaryItemAddOnResponse

## Properties

| Name                               | Type                                                                      | Description | Notes       |
| ---------------------------------- | ------------------------------------------------------------------------- | ----------- | ----------- |
| **amount**                         | **float**                                                                 |             | \[optional] |
| **var\_date**                      | **str**                                                                   |             | \[optional] |
| **employee**                       | [**SalaryItemAddOnEmployeeResponse**](salaryitemaddonemployeeresponse.md) |             | \[optional] |
| **salary\_calculation\_processed** | **bool**                                                                  |             | \[optional] |
| **salary\_item**                   | [**SalaryItemSimpleResponse**](salaryitemsimpleresponse.md)               |             | \[optional] |

## Example

```python
from catapa import SalaryItemAddOnResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryItemAddOnResponse from a JSON string
salary_item_add_on_response_instance = SalaryItemAddOnResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryItemAddOnResponse.to_json())

# convert the object into a dict
salary_item_add_on_response_dict = salary_item_add_on_response_instance.to_dict()
# create an instance of SalaryItemAddOnResponse from a dict
salary_item_add_on_response_from_dict = SalaryItemAddOnResponse.from_dict(salary_item_add_on_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
