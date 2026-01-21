# JobTitleResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**min_job_level** | [**JobLevelResponse**](JobLevelResponse.md) |  | [optional] 
**max_job_level** | [**JobLevelResponse**](JobLevelResponse.md) |  | [optional] 

## Example

```python
from catapa import JobTitleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of JobTitleResponse from a JSON string
job_title_response_instance = JobTitleResponse.from_json(json)
# print the JSON string representation of the object
print(JobTitleResponse.to_json())

# convert the object into a dict
job_title_response_dict = job_title_response_instance.to_dict()
# create an instance of JobTitleResponse from a dict
job_title_response_from_dict = JobTitleResponse.from_dict(job_title_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



