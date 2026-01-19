# EducationLevelListResponse

## Properties

| Name                     | Type                                                            | Description | Notes       |
| ------------------------ | --------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                         |             | \[optional] |
| **last**                 | **bool**                                                        |             | \[optional] |
| **total\_elements**      | **int**                                                         |             | \[optional] |
| **number\_of\_elements** | **int**                                                         |             | \[optional] |
| **has\_content**         | **bool**                                                        |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                     |             | \[optional] |
| **first**                | **bool**                                                        |             | \[optional] |
| **size**                 | **int**                                                         |             | \[optional] |
| **number**               | **int**                                                         |             | \[optional] |
| **content**              | [**List\[EducationLevelResponse\]**](educationlevelresponse.md) |             | \[optional] |

## Example

```python
from catapa import EducationLevelListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EducationLevelListResponse from a JSON string
education_level_list_response_instance = EducationLevelListResponse.from_json(json)
# print the JSON string representation of the object
print(EducationLevelListResponse.to_json())

# convert the object into a dict
education_level_list_response_dict = education_level_list_response_instance.to_dict()
# create an instance of EducationLevelListResponse from a dict
education_level_list_response_from_dict = EducationLevelListResponse.from_dict(education_level_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
