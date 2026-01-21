# AnomalySuspectListResponse


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
**content** | [**List[AnomalySuspectResponse]**](AnomalySuspectResponse.md) | List of anomaly suspects | [optional] 

## Example

```python
from catapa import AnomalySuspectListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnomalySuspectListResponse from a JSON string
anomaly_suspect_list_response_instance = AnomalySuspectListResponse.from_json(json)
# print the JSON string representation of the object
print(AnomalySuspectListResponse.to_json())

# convert the object into a dict
anomaly_suspect_list_response_dict = anomaly_suspect_list_response_instance.to_dict()
# create an instance of AnomalySuspectListResponse from a dict
anomaly_suspect_list_response_from_dict = AnomalySuspectListResponse.from_dict(anomaly_suspect_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



