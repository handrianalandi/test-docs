# JobLevelRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**level** | **float** |  | 
**job_position_id** | **str** |  | 
**name** | **str** |  | 

## Example

```python
from catapa import JobLevelRequest

# TODO update the JSON string below
json = "{}"
# create an instance of JobLevelRequest from a JSON string
job_level_request_instance = JobLevelRequest.from_json(json)
# print the JSON string representation of the object
print(JobLevelRequest.to_json())

# convert the object into a dict
job_level_request_dict = job_level_request_instance.to_dict()
# create an instance of JobLevelRequest from a dict
job_level_request_from_dict = JobLevelRequest.from_dict(job_level_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



