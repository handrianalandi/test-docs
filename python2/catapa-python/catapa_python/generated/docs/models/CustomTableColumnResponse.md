# CustomTableColumnResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier of the column | [optional] 
**column_name** | **str** | Technical name of the column | [optional] 
**field_name** | **str** | CamelCase version of columnName | [optional] 
**display_name** | **str** | Display name of the column | [optional] 
**field_order** | **int** | Order of the field in the table | [optional] 
**data_type** | **str** | Data type of the column | [optional] 
**is_required** | **bool** | Whether the column is required | [optional] 
**is_reference** | **bool** | Whether the column is a reference to another entity | [optional] 
**column_metadata** | **Dict[str, object]** | Additional metadata for the column | [optional] 
**tooltip** | **str** | Optional custom tooltip to be shown to the user | [optional] 

## Example

```python
from catapa import CustomTableColumnResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CustomTableColumnResponse from a JSON string
custom_table_column_response_instance = CustomTableColumnResponse.from_json(json)
# print the JSON string representation of the object
print(CustomTableColumnResponse.to_json())

# convert the object into a dict
custom_table_column_response_dict = custom_table_column_response_instance.to_dict()
# create an instance of CustomTableColumnResponse from a dict
custom_table_column_response_from_dict = CustomTableColumnResponse.from_dict(custom_table_column_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



