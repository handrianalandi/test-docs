# CustomTableEntryPageResponse


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
**content** | **List[Dict[str, object]]** |  | 

## Example

```python
from catapa import CustomTableEntryPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CustomTableEntryPageResponse from a JSON string
custom_table_entry_page_response_instance = CustomTableEntryPageResponse.from_json(json)
# print the JSON string representation of the object
print(CustomTableEntryPageResponse.to_json())

# convert the object into a dict
custom_table_entry_page_response_dict = custom_table_entry_page_response_instance.to_dict()
# create an instance of CustomTableEntryPageResponse from a dict
custom_table_entry_page_response_from_dict = CustomTableEntryPageResponse.from_dict(custom_table_entry_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



