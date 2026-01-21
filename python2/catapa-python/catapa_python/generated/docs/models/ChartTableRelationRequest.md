# ChartTableRelationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chart_table_relation_id** | **str** |  | [optional] 
**sequence** | **float** |  | [optional] 

## Example

```python
from catapa import ChartTableRelationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChartTableRelationRequest from a JSON string
chart_table_relation_request_instance = ChartTableRelationRequest.from_json(json)
# print the JSON string representation of the object
print(ChartTableRelationRequest.to_json())

# convert the object into a dict
chart_table_relation_request_dict = chart_table_relation_request_instance.to_dict()
# create an instance of ChartTableRelationRequest from a dict
chart_table_relation_request_from_dict = ChartTableRelationRequest.from_dict(chart_table_relation_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



