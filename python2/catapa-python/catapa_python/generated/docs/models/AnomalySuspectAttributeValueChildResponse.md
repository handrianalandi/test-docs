# AnomalySuspectAttributeValueChildResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier for the child attribute value | [optional] 
**attribute_value** | **str** | Value of the child attribute | [optional] 
**anomaly_suspect_attribute** | [**AnomalySuspectAttributeResponse**](AnomalySuspectAttributeResponse.md) |  | [optional] 

## Example

```python
from catapa import AnomalySuspectAttributeValueChildResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnomalySuspectAttributeValueChildResponse from a JSON string
anomaly_suspect_attribute_value_child_response_instance = AnomalySuspectAttributeValueChildResponse.from_json(json)
# print the JSON string representation of the object
print(AnomalySuspectAttributeValueChildResponse.to_json())

# convert the object into a dict
anomaly_suspect_attribute_value_child_response_dict = anomaly_suspect_attribute_value_child_response_instance.to_dict()
# create an instance of AnomalySuspectAttributeValueChildResponse from a dict
anomaly_suspect_attribute_value_child_response_from_dict = AnomalySuspectAttributeValueChildResponse.from_dict(anomaly_suspect_attribute_value_child_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



