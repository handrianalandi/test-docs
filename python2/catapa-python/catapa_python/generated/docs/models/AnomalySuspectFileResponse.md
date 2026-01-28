# AnomalySuspectFileResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filename** | **str** | Name of the file | 
**path** | **str** | File path | 
**url** | **str** | URL to access the file | 

## Example

```python
from catapa import AnomalySuspectFileResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnomalySuspectFileResponse from a JSON string
anomaly_suspect_file_response_instance = AnomalySuspectFileResponse.from_json(json)
# print the JSON string representation of the object
print(AnomalySuspectFileResponse.to_json())

# convert the object into a dict
anomaly_suspect_file_response_dict = anomaly_suspect_file_response_instance.to_dict()
# create an instance of AnomalySuspectFileResponse from a dict
anomaly_suspect_file_response_from_dict = AnomalySuspectFileResponse.from_dict(anomaly_suspect_file_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



