# OrganizationParentResponse

## Properties

| Name                        | Type                                                                  | Description | Notes       |
| --------------------------- | --------------------------------------------------------------------- | ----------- | ----------- |
| **id**                      | **str**                                                               |             | \[optional] |
| **code**                    | **str**                                                               |             | \[optional] |
| **name**                    | **str**                                                               |             | \[optional] |
| **type**                    | **str**                                                               |             | \[optional] |
| **effective\_date**         | **date**                                                              | YYYY-MM-DD  | \[optional] |
| **end\_date**               | **date**                                                              | YYYY-MM-DD  | \[optional] |
| **created\_by**             | **str**                                                               |             | \[optional] |
| **created\_date**           | **float**                                                             |             | \[optional] |
| **updated\_by**             | **str**                                                               |             | \[optional] |
| **updated\_date**           | **float**                                                             |             | \[optional] |
| **organization\_hierarchy** | [**OrganizationHierarchyResponse**](organizationhierarchyresponse.md) |             | \[optional] |
| **organization\_group**     | [**IdCodeNameResponse**](idcodenameresponse.md)                       |             | \[optional] |
| **organization\_parent**    | **object**                                                            |             | \[optional] |
| **company**                 | [**IdCodeNameResponse**](idcodenameresponse.md)                       |             | \[optional] |

## Example

```python
from catapa import OrganizationParentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationParentResponse from a JSON string
organization_parent_response_instance = OrganizationParentResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationParentResponse.to_json())

# convert the object into a dict
organization_parent_response_dict = organization_parent_response_instance.to_dict()
# create an instance of OrganizationParentResponse from a dict
organization_parent_response_from_dict = OrganizationParentResponse.from_dict(organization_parent_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
