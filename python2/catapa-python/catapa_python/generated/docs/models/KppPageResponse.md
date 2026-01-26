# KppPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[KppResponse]**](KppResponse.md) | List of KPPs | [optional] 

## Example

```python
from catapa import KppPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of KppPageResponse from a JSON string
kpp_page_response_instance = KppPageResponse.from_json(json)
# print the JSON string representation of the object
print(KppPageResponse.to_json())

# convert the object into a dict
kpp_page_response_dict = kpp_page_response_instance.to_dict()
# create an instance of KppPageResponse from a dict
kpp_page_response_from_dict = KppPageResponse.from_dict(kpp_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



