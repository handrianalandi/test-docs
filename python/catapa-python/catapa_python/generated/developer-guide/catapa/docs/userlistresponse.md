# UserListResponse

## Properties

| Name                     | Type                                        | Description   | Notes       |
| ------------------------ | ------------------------------------------- | ------------- | ----------- |
| **total\_pages**         | **int**                                     |               | \[optional] |
| **last**                 | **bool**                                    |               | \[optional] |
| **total\_elements**      | **int**                                     |               | \[optional] |
| **number\_of\_elements** | **int**                                     |               | \[optional] |
| **has\_content**         | **bool**                                    |               | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md) |               | \[optional] |
| **first**                | **bool**                                    |               | \[optional] |
| **size**                 | **int**                                     |               | \[optional] |
| **number**               | **int**                                     |               | \[optional] |
| **content**              | [**List\[UserResponse\]**](userresponse.md) | List of users | \[optional] |

## Example

```python
from catapa import UserListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UserListResponse from a JSON string
user_list_response_instance = UserListResponse.from_json(json)
# print the JSON string representation of the object
print(UserListResponse.to_json())

# convert the object into a dict
user_list_response_dict = user_list_response_instance.to_dict()
# create an instance of UserListResponse from a dict
user_list_response_from_dict = UserListResponse.from_dict(user_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
