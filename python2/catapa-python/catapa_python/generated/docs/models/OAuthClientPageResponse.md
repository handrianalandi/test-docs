# OAuthClientPageResponse


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
**content** | [**List[OAuthClientResponse]**](OAuthClientResponse.md) | List of OAuth clients | 

## Example

```python
from catapa import OAuthClientPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OAuthClientPageResponse from a JSON string
o_auth_client_page_response_instance = OAuthClientPageResponse.from_json(json)
# print the JSON string representation of the object
print(OAuthClientPageResponse.to_json())

# convert the object into a dict
o_auth_client_page_response_dict = o_auth_client_page_response_instance.to_dict()
# create an instance of OAuthClientPageResponse from a dict
o_auth_client_page_response_from_dict = OAuthClientPageResponse.from_dict(o_auth_client_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



