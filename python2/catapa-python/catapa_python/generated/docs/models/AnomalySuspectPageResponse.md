# AnomalySuspectPageResponse


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
**content** | [**List[AnomalySuspectResponse]**](AnomalySuspectResponse.md) | List of anomaly suspects | 

## Example

```python
from catapa import AnomalySuspectPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnomalySuspectPageResponse from a JSON string
anomaly_suspect_page_response_instance = AnomalySuspectPageResponse.from_json(json)
# print the JSON string representation of the object
print(AnomalySuspectPageResponse.to_json())

# convert the object into a dict
anomaly_suspect_page_response_dict = anomaly_suspect_page_response_instance.to_dict()
# create an instance of AnomalySuspectPageResponse from a dict
anomaly_suspect_page_response_from_dict = AnomalySuspectPageResponse.from_dict(anomaly_suspect_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



