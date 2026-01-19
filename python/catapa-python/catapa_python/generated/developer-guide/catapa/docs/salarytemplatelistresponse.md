# SalaryTemplateListResponse

## Properties

| Name                     | Type                                                            | Description | Notes       |
| ------------------------ | --------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                         |             | \[optional] |
| **last**                 | **bool**                                                        |             | \[optional] |
| **total\_elements**      | **int**                                                         |             | \[optional] |
| **number\_of\_elements** | **int**                                                         |             | \[optional] |
| **has\_content**         | **bool**                                                        |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                     |             | \[optional] |
| **first**                | **bool**                                                        |             | \[optional] |
| **size**                 | **int**                                                         |             | \[optional] |
| **number**               | **int**                                                         |             | \[optional] |
| **content**              | [**List\[SalaryTemplateResponse\]**](salarytemplateresponse.md) |             | \[optional] |

## Example

```python
from catapa import SalaryTemplateListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryTemplateListResponse from a JSON string
salary_template_list_response_instance = SalaryTemplateListResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryTemplateListResponse.to_json())

# convert the object into a dict
salary_template_list_response_dict = salary_template_list_response_instance.to_dict()
# create an instance of SalaryTemplateListResponse from a dict
salary_template_list_response_from_dict = SalaryTemplateListResponse.from_dict(salary_template_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
