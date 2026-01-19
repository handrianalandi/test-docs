# OrganizationSuperiorListResponse

## Properties

| Name                     | Type                                                                        | Description | Notes       |
| ------------------------ | --------------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                     |             | \[optional] |
| **last**                 | **bool**                                                                    |             | \[optional] |
| **total\_elements**      | **int**                                                                     |             | \[optional] |
| **number\_of\_elements** | **int**                                                                     |             | \[optional] |
| **has\_content**         | **bool**                                                                    |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                                 |             | \[optional] |
| **first**                | **bool**                                                                    |             | \[optional] |
| **size**                 | **int**                                                                     |             | \[optional] |
| **number**               | **int**                                                                     |             | \[optional] |
| **content**              | [**List\[OrganizationSuperiorResponse\]**](organizationsuperiorresponse.md) |             | \[optional] |

## Example

```python
from catapa import OrganizationSuperiorListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationSuperiorListResponse from a JSON string
organization_superior_list_response_instance = OrganizationSuperiorListResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationSuperiorListResponse.to_json())

# convert the object into a dict
organization_superior_list_response_dict = organization_superior_list_response_instance.to_dict()
# create an instance of OrganizationSuperiorListResponse from a dict
organization_superior_list_response_from_dict = OrganizationSuperiorListResponse.from_dict(organization_superior_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
