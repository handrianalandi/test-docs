# AnalyticsColumnResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 
**name** | **str** |  | 
**type** | **str** |  | 

## Example

```python
from catapa import AnalyticsColumnResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnalyticsColumnResponse from a JSON string
analytics_column_response_instance = AnalyticsColumnResponse.from_json(json)
# print the JSON string representation of the object
print(AnalyticsColumnResponse.to_json())

# convert the object into a dict
analytics_column_response_dict = analytics_column_response_instance.to_dict()
# create an instance of AnalyticsColumnResponse from a dict
analytics_column_response_from_dict = AnalyticsColumnResponse.from_dict(analytics_column_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



