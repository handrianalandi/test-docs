# CreateCityRequest

## Properties

| Name      | Type                                                    | Description | Notes |
| --------- | ------------------------------------------------------- | ----------- | ----- |
| **code**  | **str**                                                 |             |       |
| **name**  | **str**                                                 |             |       |
| **state** | [**CreateCityRequestState**](createcityrequeststate.md) |             |       |

## Example

```python
from catapa import CreateCityRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCityRequest from a JSON string
create_city_request_instance = CreateCityRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCityRequest.to_json())

# convert the object into a dict
create_city_request_dict = create_city_request_instance.to_dict()
# create an instance of CreateCityRequest from a dict
create_city_request_from_dict = CreateCityRequest.from_dict(create_city_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
