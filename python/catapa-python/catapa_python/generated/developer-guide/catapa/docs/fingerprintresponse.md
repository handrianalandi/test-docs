# FingerprintResponse

## Properties

| Name          | Type                                                                            | Description | Notes       |
| ------------- | ------------------------------------------------------------------------------- | ----------- | ----------- |
| **successes** | [**List\[FingerprintSuccessItemResponse\]**](fingerprintsuccessitemresponse.md) |             | \[optional] |
| **failures**  | [**List\[FingerprintFailureItemResponse\]**](fingerprintfailureitemresponse.md) |             | \[optional] |

## Example

```python
from catapa import FingerprintResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FingerprintResponse from a JSON string
fingerprint_response_instance = FingerprintResponse.from_json(json)
# print the JSON string representation of the object
print(FingerprintResponse.to_json())

# convert the object into a dict
fingerprint_response_dict = fingerprint_response_instance.to_dict()
# create an instance of FingerprintResponse from a dict
fingerprint_response_from_dict = FingerprintResponse.from_dict(fingerprint_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
