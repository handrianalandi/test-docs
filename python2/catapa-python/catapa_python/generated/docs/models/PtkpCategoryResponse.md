# PtkpCategoryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**max_dependent** | **float** |  | 
**formula** | **str** |  | 

## Example

```python
from catapa import PtkpCategoryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PtkpCategoryResponse from a JSON string
ptkp_category_response_instance = PtkpCategoryResponse.from_json(json)
# print the JSON string representation of the object
print(PtkpCategoryResponse.to_json())

# convert the object into a dict
ptkp_category_response_dict = ptkp_category_response_instance.to_dict()
# create an instance of PtkpCategoryResponse from a dict
ptkp_category_response_from_dict = PtkpCategoryResponse.from_dict(ptkp_category_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



