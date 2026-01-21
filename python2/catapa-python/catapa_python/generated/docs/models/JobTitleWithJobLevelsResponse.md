# JobTitleWithJobLevelsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**job_levels** | [**List[JobLevelResponse]**](JobLevelResponse.md) |  | [optional] 

## Example

```python
from catapa import JobTitleWithJobLevelsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of JobTitleWithJobLevelsResponse from a JSON string
job_title_with_job_levels_response_instance = JobTitleWithJobLevelsResponse.from_json(json)
# print the JSON string representation of the object
print(JobTitleWithJobLevelsResponse.to_json())

# convert the object into a dict
job_title_with_job_levels_response_dict = job_title_with_job_levels_response_instance.to_dict()
# create an instance of JobTitleWithJobLevelsResponse from a dict
job_title_with_job_levels_response_from_dict = JobTitleWithJobLevelsResponse.from_dict(job_title_with_job_levels_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



