# UserResponse

## Properties

| Name         | Type                                                | Description                   | Notes       |
| ------------ | --------------------------------------------------- | ----------------------------- | ----------- |
| **id**       | **str**                                             | Unique identifier of the user | \[optional] |
| **username** | **str**                                             | Username of the user          | \[optional] |
| **employee** | [**EmployeeFullResponse**](employeefullresponse.md) |                               | \[optional] |

## Example

```python
from catapa import UserResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UserResponse from a JSON string
user_response_instance = UserResponse.from_json(json)
# print the JSON string representation of the object
print(UserResponse.to_json())

# convert the object into a dict
user_response_dict = user_response_instance.to_dict()
# create an instance of UserResponse from a dict
user_response_from_dict = UserResponse.from_dict(user_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
