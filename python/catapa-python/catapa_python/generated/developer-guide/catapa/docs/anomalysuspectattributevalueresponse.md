# AnomalySuspectAttributeValueResponse

## Properties

| Name                            | Type                                                                                                  | Description                               | Notes       |
| ------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------- | ----------- |
| **id**                          | **str**                                                                                               | Unique identifier for the attribute value | \[optional] |
| **attribute\_value**            | **str**                                                                                               | Value of the attribute                    | \[optional] |
| **score**                       | **float**                                                                                             | Score associated with the attribute value | \[optional] |
| **input\_source**               | **str**                                                                                               | Source of the input data                  | \[optional] |
| **anomaly\_suspect\_attribute** | [**AnomalySuspectAttributeResponse**](anomalysuspectattributeresponse.md)                             |                                           | \[optional] |
| **child**                       | [**List\[AnomalySuspectAttributeValueChildResponse\]**](anomalysuspectattributevaluechildresponse.md) | Child attribute values                    | \[optional] |

## Example

```python
from catapa import AnomalySuspectAttributeValueResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnomalySuspectAttributeValueResponse from a JSON string
anomaly_suspect_attribute_value_response_instance = AnomalySuspectAttributeValueResponse.from_json(json)
# print the JSON string representation of the object
print(AnomalySuspectAttributeValueResponse.to_json())

# convert the object into a dict
anomaly_suspect_attribute_value_response_dict = anomaly_suspect_attribute_value_response_instance.to_dict()
# create an instance of AnomalySuspectAttributeValueResponse from a dict
anomaly_suspect_attribute_value_response_from_dict = AnomalySuspectAttributeValueResponse.from_dict(anomaly_suspect_attribute_value_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
