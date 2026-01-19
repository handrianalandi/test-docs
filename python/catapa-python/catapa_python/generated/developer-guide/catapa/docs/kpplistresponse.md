# KppListResponse

## Properties

| Name        | Type                                      | Description  | Notes       |
| ----------- | ----------------------------------------- | ------------ | ----------- |
| **content** | [**List\[KppResponse\]**](kppresponse.md) | List of KPPs | \[optional] |

## Example

```python
from catapa import KppListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of KppListResponse from a JSON string
kpp_list_response_instance = KppListResponse.from_json(json)
# print the JSON string representation of the object
print(KppListResponse.to_json())

# convert the object into a dict
kpp_list_response_dict = kpp_list_response_instance.to_dict()
# create an instance of KppListResponse from a dict
kpp_list_response_from_dict = KppListResponse.from_dict(kpp_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
