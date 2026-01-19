# AddressDetailResponse

## Properties

| Name          | Type                                | Description | Notes       |
| ------------- | ----------------------------------- | ----------- | ----------- |
| **address**   | **str**                             |             | \[optional] |
| **zip\_code** | **str**                             |             | \[optional] |
| **phone**     | **str**                             |             | \[optional] |
| **district**  | **str**                             |             | \[optional] |
| **city**      | [**CityResponse**](cityresponse.md) |             | \[optional] |

## Example

```python
from catapa import AddressDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AddressDetailResponse from a JSON string
address_detail_response_instance = AddressDetailResponse.from_json(json)
# print the JSON string representation of the object
print(AddressDetailResponse.to_json())

# convert the object into a dict
address_detail_response_dict = address_detail_response_instance.to_dict()
# create an instance of AddressDetailResponse from a dict
address_detail_response_from_dict = AddressDetailResponse.from_dict(address_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
