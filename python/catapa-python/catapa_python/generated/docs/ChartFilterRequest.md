# ChartFilterRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**column_id** | **str** |  | [optional] 
**chart_filter_type** | **str** |  | [optional] 
**chart_value_collection_filters** | [**List[ChartValueCollectionFilterRequest]**](ChartValueCollectionFilterRequest.md) |  | [optional] 
**start_date** | **str** |  | [optional] 
**end_date** | **str** |  | [optional] 
**time_frame** | **str** |  | [optional] 
**time_unit** | **str** |  | [optional] 
**duration** | **float** |  | [optional] 

## Example

```python
from catapa import ChartFilterRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChartFilterRequest from a JSON string
chart_filter_request_instance = ChartFilterRequest.from_json(json)
# print the JSON string representation of the object
print(ChartFilterRequest.to_json())

# convert the object into a dict
chart_filter_request_dict = chart_filter_request_instance.to_dict()
# create an instance of ChartFilterRequest from a dict
chart_filter_request_from_dict = ChartFilterRequest.from_dict(chart_filter_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



