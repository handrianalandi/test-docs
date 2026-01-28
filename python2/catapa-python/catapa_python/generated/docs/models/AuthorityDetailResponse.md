# AuthorityDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Authority identifier | 
**code** | **str** | Authority code | 
**name** | **str** | Authority name | 
**description** | **str** | Authority description | 
**module_name** | **str** | Module name this authority belongs to | 

## Example

```python
from catapa import AuthorityDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AuthorityDetailResponse from a JSON string
authority_detail_response_instance = AuthorityDetailResponse.from_json(json)
# print the JSON string representation of the object
print(AuthorityDetailResponse.to_json())

# convert the object into a dict
authority_detail_response_dict = authority_detail_response_instance.to_dict()
# create an instance of AuthorityDetailResponse from a dict
authority_detail_response_from_dict = AuthorityDetailResponse.from_dict(authority_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



