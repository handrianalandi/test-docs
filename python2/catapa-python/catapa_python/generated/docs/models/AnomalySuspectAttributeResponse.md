# AnomalySuspectAttributeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier for the attribute | 
**attribute_key** | **str** | Key/name of the attribute | 

## Example

```python
from catapa import AnomalySuspectAttributeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnomalySuspectAttributeResponse from a JSON string
anomaly_suspect_attribute_response_instance = AnomalySuspectAttributeResponse.from_json(json)
# print the JSON string representation of the object
print(AnomalySuspectAttributeResponse.to_json())

# convert the object into a dict
anomaly_suspect_attribute_response_dict = anomaly_suspect_attribute_response_instance.to_dict()
# create an instance of AnomalySuspectAttributeResponse from a dict
anomaly_suspect_attribute_response_from_dict = AnomalySuspectAttributeResponse.from_dict(anomaly_suspect_attribute_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



