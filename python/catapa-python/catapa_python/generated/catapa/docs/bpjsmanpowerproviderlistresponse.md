# BpjsManpowerProviderListResponse

## Properties

| Name                     | Type                                                                        | Description | Notes       |
| ------------------------ | --------------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                     |             | \[optional] |
| **last**                 | **bool**                                                                    |             | \[optional] |
| **total\_elements**      | **int**                                                                     |             | \[optional] |
| **number\_of\_elements** | **int**                                                                     |             | \[optional] |
| **has\_content**         | **bool**                                                                    |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                                 |             | \[optional] |
| **first**                | **bool**                                                                    |             | \[optional] |
| **size**                 | **int**                                                                     |             | \[optional] |
| **number**               | **int**                                                                     |             | \[optional] |
| **content**              | [**List\[BpjsManpowerProviderResponse\]**](bpjsmanpowerproviderresponse.md) |             | \[optional] |

## Example

```python
from catapa import BpjsManpowerProviderListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerProviderListResponse from a JSON string
bpjs_manpower_provider_list_response_instance = BpjsManpowerProviderListResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerProviderListResponse.to_json())

# convert the object into a dict
bpjs_manpower_provider_list_response_dict = bpjs_manpower_provider_list_response_instance.to_dict()
# create an instance of BpjsManpowerProviderListResponse from a dict
bpjs_manpower_provider_list_response_from_dict = BpjsManpowerProviderListResponse.from_dict(bpjs_manpower_provider_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
