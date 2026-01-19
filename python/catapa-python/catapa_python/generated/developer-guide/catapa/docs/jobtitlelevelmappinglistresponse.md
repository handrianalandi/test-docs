# JobTitleLevelMappingListResponse

## Properties

| Name                     | Type                                                                        | Description | Notes       |
| ------------------------ | --------------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                     |             | \[optional] |
| **last**                 | **bool**                                                                    |             | \[optional] |
| **total\_elements**      | **int**                                                                     |             | \[optional] |
| **number\_of\_elements** | **int**                                                                     |             | \[optional] |
| **has\_content**         | **bool**                                                                    |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                                 |             | \[optional] |
| **first**                | **bool**                                                                    |             | \[optional] |
| **size**                 | **int**                                                                     |             | \[optional] |
| **number**               | **int**                                                                     |             | \[optional] |
| **content**              | [**List\[JobTitleLevelMappingResponse\]**](jobtitlelevelmappingresponse.md) |             | \[optional] |

## Example

```python
from catapa import JobTitleLevelMappingListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of JobTitleLevelMappingListResponse from a JSON string
job_title_level_mapping_list_response_instance = JobTitleLevelMappingListResponse.from_json(json)
# print the JSON string representation of the object
print(JobTitleLevelMappingListResponse.to_json())

# convert the object into a dict
job_title_level_mapping_list_response_dict = job_title_level_mapping_list_response_instance.to_dict()
# create an instance of JobTitleLevelMappingListResponse from a dict
job_title_level_mapping_list_response_from_dict = JobTitleLevelMappingListResponse.from_dict(job_title_level_mapping_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
