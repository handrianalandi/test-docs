# SalaryTemplateResponse

## Properties

| Name                          | Type                                                                        | Description | Notes       |
| ----------------------------- | --------------------------------------------------------------------------- | ----------- | ----------- |
| **id**                        | **UUID**                                                                    |             | \[optional] |
| **code**                      | **str**                                                                     |             | \[optional] |
| **name**                      | **str**                                                                     |             | \[optional] |
| **salary\_template\_details** | [**List\[SalaryTemplateDetailResponse\]**](salarytemplatedetailresponse.md) |             | \[optional] |

## Example

```python
from catapa import SalaryTemplateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryTemplateResponse from a JSON string
salary_template_response_instance = SalaryTemplateResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryTemplateResponse.to_json())

# convert the object into a dict
salary_template_response_dict = salary_template_response_instance.to_dict()
# create an instance of SalaryTemplateResponse from a dict
salary_template_response_from_dict = SalaryTemplateResponse.from_dict(salary_template_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
