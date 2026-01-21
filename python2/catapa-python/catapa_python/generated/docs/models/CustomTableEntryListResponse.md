# CustomTableEntryListResponse


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
**content** | **List[Dict[str, object]]** |  | [optional] 

## Example

```python
from catapa import CustomTableEntryListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CustomTableEntryListResponse from a JSON string
custom_table_entry_list_response_instance = CustomTableEntryListResponse.from_json(json)
# print the JSON string representation of the object
print(CustomTableEntryListResponse.to_json())

# convert the object into a dict
custom_table_entry_list_response_dict = custom_table_entry_list_response_instance.to_dict()
# create an instance of CustomTableEntryListResponse from a dict
custom_table_entry_list_response_from_dict = CustomTableEntryListResponse.from_dict(custom_table_entry_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



