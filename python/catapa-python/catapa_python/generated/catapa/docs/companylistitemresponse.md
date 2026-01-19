# CompanyListItemResponse

## Properties

| Name               | Type                                            | Description | Notes       |
| ------------------ | ----------------------------------------------- | ----------- | ----------- |
| **id**             | **str**                                         |             | \[optional] |
| **name**           | **str**                                         |             | \[optional] |
| **code**           | **str**                                         |             | \[optional] |
| **company\_group** | [**IdCodeNameResponse**](idcodenameresponse.md) |             | \[optional] |

## Example

```python
from catapa import CompanyListItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CompanyListItemResponse from a JSON string
company_list_item_response_instance = CompanyListItemResponse.from_json(json)
# print the JSON string representation of the object
print(CompanyListItemResponse.to_json())

# convert the object into a dict
company_list_item_response_dict = company_list_item_response_instance.to_dict()
# create an instance of CompanyListItemResponse from a dict
company_list_item_response_from_dict = CompanyListItemResponse.from_dict(company_list_item_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
