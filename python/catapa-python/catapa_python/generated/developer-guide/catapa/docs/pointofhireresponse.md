# PointOfHireResponse

## Properties

| Name                | Type                                            | Description | Notes       |
| ------------------- | ----------------------------------------------- | ----------- | ----------- |
| **id**              | **str**                                         |             | \[optional] |
| **code**            | **str**                                         |             | \[optional] |
| **name**            | **str**                                         |             | \[optional] |
| **location\_group** | [**IdCodeNameResponse**](idcodenameresponse.md) |             | \[optional] |
| **city**            | [**CityResponse**](cityresponse.md)             |             | \[optional] |
| **latitude**        | **float**                                       |             | \[optional] |
| **longitude**       | **float**                                       |             | \[optional] |
| **address**         | **str**                                         |             | \[optional] |
| **phone**           | **str**                                         |             | \[optional] |
| **zip\_code**       | **str**                                         |             | \[optional] |
| **headquarter**     | **bool**                                        |             | \[optional] |
| **company**         | [**IdCodeNameResponse**](idcodenameresponse.md) |             | \[optional] |

## Example

```python
from catapa import PointOfHireResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PointOfHireResponse from a JSON string
point_of_hire_response_instance = PointOfHireResponse.from_json(json)
# print the JSON string representation of the object
print(PointOfHireResponse.to_json())

# convert the object into a dict
point_of_hire_response_dict = point_of_hire_response_instance.to_dict()
# create an instance of PointOfHireResponse from a dict
point_of_hire_response_from_dict = PointOfHireResponse.from_dict(point_of_hire_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
