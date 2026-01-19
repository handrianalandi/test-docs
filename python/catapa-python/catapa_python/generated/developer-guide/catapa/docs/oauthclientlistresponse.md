# OAuthClientListResponse

## Properties

| Name                     | Type                                                      | Description           | Notes       |
| ------------------------ | --------------------------------------------------------- | --------------------- | ----------- |
| **total\_pages**         | **int**                                                   |                       | \[optional] |
| **last**                 | **bool**                                                  |                       | \[optional] |
| **total\_elements**      | **int**                                                   |                       | \[optional] |
| **number\_of\_elements** | **int**                                                   |                       | \[optional] |
| **has\_content**         | **bool**                                                  |                       | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)               |                       | \[optional] |
| **first**                | **bool**                                                  |                       | \[optional] |
| **size**                 | **int**                                                   |                       | \[optional] |
| **number**               | **int**                                                   |                       | \[optional] |
| **content**              | [**List\[OAuthClientResponse\]**](oauthclientresponse.md) | List of OAuth clients | \[optional] |

## Example

```python
from catapa import OAuthClientListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OAuthClientListResponse from a JSON string
o_auth_client_list_response_instance = OAuthClientListResponse.from_json(json)
# print the JSON string representation of the object
print(OAuthClientListResponse.to_json())

# convert the object into a dict
o_auth_client_list_response_dict = o_auth_client_list_response_instance.to_dict()
# create an instance of OAuthClientListResponse from a dict
o_auth_client_list_response_from_dict = OAuthClientListResponse.from_dict(o_auth_client_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
