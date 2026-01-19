# JobTitleLevelMappingResponse

## Properties

| Name           | Type                                        | Description | Notes       |
| -------------- | ------------------------------------------- | ----------- | ----------- |
| **job\_title** | [**JobTitleResponse**](jobtitleresponse.md) |             | \[optional] |
| **job\_level** | [**JobLevelResponse**](joblevelresponse.md) |             | \[optional] |

## Example

```python
from catapa import JobTitleLevelMappingResponse

# TODO update the JSON string below
json = "{}"
# create an instance of JobTitleLevelMappingResponse from a JSON string
job_title_level_mapping_response_instance = JobTitleLevelMappingResponse.from_json(json)
# print the JSON string representation of the object
print(JobTitleLevelMappingResponse.to_json())

# convert the object into a dict
job_title_level_mapping_response_dict = job_title_level_mapping_response_instance.to_dict()
# create an instance of JobTitleLevelMappingResponse from a dict
job_title_level_mapping_response_from_dict = JobTitleLevelMappingResponse.from_dict(job_title_level_mapping_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
