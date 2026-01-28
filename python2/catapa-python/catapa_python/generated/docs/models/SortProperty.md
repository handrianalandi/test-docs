# SortProperty


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**direction** | **str** |  | 
**var_property** | **str** |  | 
**ignore_case** | **bool** |  | 
**null_handling** | **str** |  | 
**ascending** | **bool** |  | 
**descending** | **bool** |  | 

## Example

```python
from catapa import SortProperty

# TODO update the JSON string below
json = "{}"
# create an instance of SortProperty from a JSON string
sort_property_instance = SortProperty.from_json(json)
# print the JSON string representation of the object
print(SortProperty.to_json())

# convert the object into a dict
sort_property_dict = sort_property_instance.to_dict()
# create an instance of SortProperty from a dict
sort_property_from_dict = SortProperty.from_dict(sort_property_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



