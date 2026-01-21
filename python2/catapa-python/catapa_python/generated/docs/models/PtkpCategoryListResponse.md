# PtkpCategoryListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[PtkpCategoryResponse]**](PtkpCategoryResponse.md) |  | [optional] 

## Example

```python
from catapa import PtkpCategoryListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PtkpCategoryListResponse from a JSON string
ptkp_category_list_response_instance = PtkpCategoryListResponse.from_json(json)
# print the JSON string representation of the object
print(PtkpCategoryListResponse.to_json())

# convert the object into a dict
ptkp_category_list_response_dict = ptkp_category_list_response_instance.to_dict()
# create an instance of PtkpCategoryListResponse from a dict
ptkp_category_list_response_from_dict = PtkpCategoryListResponse.from_dict(ptkp_category_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



