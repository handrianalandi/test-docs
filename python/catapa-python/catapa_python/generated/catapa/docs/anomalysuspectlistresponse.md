# AnomalySuspectListResponse

## Properties

| Name                     | Type                                                            | Description              | Notes       |
| ------------------------ | --------------------------------------------------------------- | ------------------------ | ----------- |
| **total\_pages**         | **int**                                                         |                          | \[optional] |
| **last**                 | **bool**                                                        |                          | \[optional] |
| **total\_elements**      | **int**                                                         |                          | \[optional] |
| **number\_of\_elements** | **int**                                                         |                          | \[optional] |
| **has\_content**         | **bool**                                                        |                          | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                     |                          | \[optional] |
| **first**                | **bool**                                                        |                          | \[optional] |
| **size**                 | **int**                                                         |                          | \[optional] |
| **number**               | **int**                                                         |                          | \[optional] |
| **content**              | [**List\[AnomalySuspectResponse\]**](anomalysuspectresponse.md) | List of anomaly suspects | \[optional] |

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

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
