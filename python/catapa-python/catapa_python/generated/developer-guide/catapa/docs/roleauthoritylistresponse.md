# RoleAuthorityListResponse

## Properties

| Name                     | Type                                                          | Description              | Notes       |
| ------------------------ | ------------------------------------------------------------- | ------------------------ | ----------- |
| **total\_pages**         | **int**                                                       |                          | \[optional] |
| **last**                 | **bool**                                                      |                          | \[optional] |
| **total\_elements**      | **int**                                                       |                          | \[optional] |
| **number\_of\_elements** | **int**                                                       |                          | \[optional] |
| **has\_content**         | **bool**                                                      |                          | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                   |                          | \[optional] |
| **first**                | **bool**                                                      |                          | \[optional] |
| **size**                 | **int**                                                       |                          | \[optional] |
| **number**               | **int**                                                       |                          | \[optional] |
| **content**              | [**List\[RoleAuthorityResponse\]**](roleauthorityresponse.md) | List of role authorities | \[optional] |

## Example

```python
from catapa import RoleAuthorityListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RoleAuthorityListResponse from a JSON string
role_authority_list_response_instance = RoleAuthorityListResponse.from_json(json)
# print the JSON string representation of the object
print(RoleAuthorityListResponse.to_json())

# convert the object into a dict
role_authority_list_response_dict = role_authority_list_response_instance.to_dict()
# create an instance of RoleAuthorityListResponse from a dict
role_authority_list_response_from_dict = RoleAuthorityListResponse.from_dict(role_authority_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
