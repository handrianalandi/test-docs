# ContactInformationListResponse

## Properties

| Name                     | Type                                                                    | Description | Notes       |
| ------------------------ | ----------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                 |             | \[optional] |
| **last**                 | **bool**                                                                |             | \[optional] |
| **total\_elements**      | **int**                                                                 |             | \[optional] |
| **number\_of\_elements** | **int**                                                                 |             | \[optional] |
| **has\_content**         | **bool**                                                                |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                             |             | \[optional] |
| **first**                | **bool**                                                                |             | \[optional] |
| **size**                 | **int**                                                                 |             | \[optional] |
| **number**               | **int**                                                                 |             | \[optional] |
| **content**              | [**List\[ContactInformationResponse\]**](contactinformationresponse.md) |             | \[optional] |

## Example

```python
from catapa import ContactInformationListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ContactInformationListResponse from a JSON string
contact_information_list_response_instance = ContactInformationListResponse.from_json(json)
# print the JSON string representation of the object
print(ContactInformationListResponse.to_json())

# convert the object into a dict
contact_information_list_response_dict = contact_information_list_response_instance.to_dict()
# create an instance of ContactInformationListResponse from a dict
contact_information_list_response_from_dict = ContactInformationListResponse.from_dict(contact_information_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
