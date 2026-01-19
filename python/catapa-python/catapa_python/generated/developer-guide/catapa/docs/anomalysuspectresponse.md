# AnomalySuspectResponse

## Properties

| Name                                    | Type                                                                                        | Description                               | Notes       |
| --------------------------------------- | ------------------------------------------------------------------------------------------- | ----------------------------------------- | ----------- |
| **id**                                  | **str**                                                                                     | Unique identifier for the anomaly suspect | \[optional] |
| **identifier**                          | **str**                                                                                     | Anomaly suspect identifier                | \[optional] |
| **file**                                | [**AnomalySuspectFileResponse**](anomalysuspectfileresponse.md)                             |                                           | \[optional] |
| **anomaly\_suspect\_attribute\_values** | [**List\[AnomalySuspectAttributeValueResponse\]**](anomalysuspectattributevalueresponse.md) | List of anomaly suspect attribute values  | \[optional] |

## Example

```python
from catapa import AnomalySuspectResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnomalySuspectResponse from a JSON string
anomaly_suspect_response_instance = AnomalySuspectResponse.from_json(json)
# print the JSON string representation of the object
print(AnomalySuspectResponse.to_json())

# convert the object into a dict
anomaly_suspect_response_dict = anomaly_suspect_response_instance.to_dict()
# create an instance of AnomalySuspectResponse from a dict
anomaly_suspect_response_from_dict = AnomalySuspectResponse.from_dict(anomaly_suspect_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
