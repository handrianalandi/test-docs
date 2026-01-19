# JobTitleListResponse

## Properties

| Name                     | Type                                                | Description | Notes       |
| ------------------------ | --------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                             |             | \[optional] |
| **last**                 | **bool**                                            |             | \[optional] |
| **total\_elements**      | **int**                                             |             | \[optional] |
| **number\_of\_elements** | **int**                                             |             | \[optional] |
| **has\_content**         | **bool**                                            |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)         |             | \[optional] |
| **first**                | **bool**                                            |             | \[optional] |
| **size**                 | **int**                                             |             | \[optional] |
| **number**               | **int**                                             |             | \[optional] |
| **content**              | [**List\[JobTitleResponse\]**](jobtitleresponse.md) |             | \[optional] |

## Example

```python
from catapa import JobTitleListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of JobTitleListResponse from a JSON string
job_title_list_response_instance = JobTitleListResponse.from_json(json)
# print the JSON string representation of the object
print(JobTitleListResponse.to_json())

# convert the object into a dict
job_title_list_response_dict = job_title_list_response_instance.to_dict()
# create an instance of JobTitleListResponse from a dict
job_title_list_response_from_dict = JobTitleListResponse.from_dict(job_title_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
