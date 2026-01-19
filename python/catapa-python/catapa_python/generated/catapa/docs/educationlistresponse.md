# EducationListResponse

## Properties

| Name                     | Type                                                  | Description | Notes       |
| ------------------------ | ----------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                               |             | \[optional] |
| **last**                 | **bool**                                              |             | \[optional] |
| **total\_elements**      | **int**                                               |             | \[optional] |
| **number\_of\_elements** | **int**                                               |             | \[optional] |
| **has\_content**         | **bool**                                              |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)           |             | \[optional] |
| **first**                | **bool**                                              |             | \[optional] |
| **size**                 | **int**                                               |             | \[optional] |
| **number**               | **int**                                               |             | \[optional] |
| **content**              | [**List\[EducationResponse\]**](educationresponse.md) |             | \[optional] |

## Example

```python
from catapa import EducationListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EducationListResponse from a JSON string
education_list_response_instance = EducationListResponse.from_json(json)
# print the JSON string representation of the object
print(EducationListResponse.to_json())

# convert the object into a dict
education_list_response_dict = education_list_response_instance.to_dict()
# create an instance of EducationListResponse from a dict
education_list_response_from_dict = EducationListResponse.from_dict(education_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
