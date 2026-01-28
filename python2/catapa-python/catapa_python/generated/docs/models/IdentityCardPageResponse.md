# IdentityCardPageResponse


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
**content** | [**List[IdentityCardResponse]**](IdentityCardResponse.md) |  | 

## Example

```python
from catapa import IdentityCardPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IdentityCardPageResponse from a JSON string
identity_card_page_response_instance = IdentityCardPageResponse.from_json(json)
# print the JSON string representation of the object
print(IdentityCardPageResponse.to_json())

# convert the object into a dict
identity_card_page_response_dict = identity_card_page_response_instance.to_dict()
# create an instance of IdentityCardPageResponse from a dict
identity_card_page_response_from_dict = IdentityCardPageResponse.from_dict(identity_card_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



