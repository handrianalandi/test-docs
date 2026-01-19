# PlaceOfBirthRequest

## Properties

| Name      | Type                                | Description | Notes       |
| --------- | ----------------------------------- | ----------- | ----------- |
| **id**    | **str**                             |             | \[optional] |
| **code**  | **str**                             |             | \[optional] |
| **name**  | **str**                             |             | \[optional] |
| **state** | [**StateRequest**](staterequest.md) |             | \[optional] |

## Example

```python
from catapa import PlaceOfBirthRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PlaceOfBirthRequest from a JSON string
place_of_birth_request_instance = PlaceOfBirthRequest.from_json(json)
# print the JSON string representation of the object
print(PlaceOfBirthRequest.to_json())

# convert the object into a dict
place_of_birth_request_dict = place_of_birth_request_instance.to_dict()
# create an instance of PlaceOfBirthRequest from a dict
place_of_birth_request_from_dict = PlaceOfBirthRequest.from_dict(place_of_birth_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
