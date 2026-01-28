# UserPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[UserResponse]**](UserResponse.md) | List of users | 

## Example

```python
from catapa import UserPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UserPageResponse from a JSON string
user_page_response_instance = UserPageResponse.from_json(json)
# print the JSON string representation of the object
print(UserPageResponse.to_json())

# convert the object into a dict
user_page_response_dict = user_page_response_instance.to_dict()
# create an instance of UserPageResponse from a dict
user_page_response_from_dict = UserPageResponse.from_dict(user_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



