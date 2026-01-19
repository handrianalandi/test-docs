# IdentityCardListResponse

## Properties

| Name                     | Type                                                        | Description | Notes       |
| ------------------------ | ----------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                     |             | \[optional] |
| **last**                 | **bool**                                                    |             | \[optional] |
| **total\_elements**      | **int**                                                     |             | \[optional] |
| **number\_of\_elements** | **int**                                                     |             | \[optional] |
| **has\_content**         | **bool**                                                    |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                 |             | \[optional] |
| **first**                | **bool**                                                    |             | \[optional] |
| **size**                 | **int**                                                     |             | \[optional] |
| **number**               | **int**                                                     |             | \[optional] |
| **content**              | [**List\[IdentityCardResponse\]**](identitycardresponse.md) |             | \[optional] |

## Example

```python
from catapa import IdentityCardListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IdentityCardListResponse from a JSON string
identity_card_list_response_instance = IdentityCardListResponse.from_json(json)
# print the JSON string representation of the object
print(IdentityCardListResponse.to_json())

# convert the object into a dict
identity_card_list_response_dict = identity_card_list_response_instance.to_dict()
# create an instance of IdentityCardListResponse from a dict
identity_card_list_response_from_dict = IdentityCardListResponse.from_dict(identity_card_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
