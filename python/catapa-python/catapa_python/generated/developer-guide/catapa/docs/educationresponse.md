# EducationResponse

## Properties

| Name                 | Type                                                    | Description | Notes       |
| -------------------- | ------------------------------------------------------- | ----------- | ----------- |
| **id**               | **str**                                                 |             | \[optional] |
| **education\_level** | [**EducationLevelResponse**](educationlevelresponse.md) |             | \[optional] |
| **field\_of\_study** | [**FieldOfStudyResponse**](fieldofstudyresponse.md)     |             | \[optional] |
| **country**          | [**CountryResponse**](countryresponse.md)               |             | \[optional] |
| **institution**      | [**InstitutionResponse**](institutionresponse.md)       |             | \[optional] |
| **start\_date**      | **str**                                                 |             | \[optional] |
| **graduation\_date** | **str**                                                 |             | \[optional] |
| **created\_by**      | **str**                                                 |             | \[optional] |
| **created\_date**    | **float**                                               |             | \[optional] |
| **updated\_by**      | **str**                                                 |             | \[optional] |
| **updated\_date**    | **float**                                               |             | \[optional] |

## Example

```python
from catapa import EducationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EducationResponse from a JSON string
education_response_instance = EducationResponse.from_json(json)
# print the JSON string representation of the object
print(EducationResponse.to_json())

# convert the object into a dict
education_response_dict = education_response_instance.to_dict()
# create an instance of EducationResponse from a dict
education_response_from_dict = EducationResponse.from_dict(education_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
