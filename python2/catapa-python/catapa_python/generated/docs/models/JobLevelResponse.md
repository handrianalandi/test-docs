# JobLevelResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**job_position** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 
**level** | **float** |  | [optional] 

## Example

```python
from catapa import JobLevelResponse

# TODO update the JSON string below
json = "{}"
# create an instance of JobLevelResponse from a JSON string
job_level_response_instance = JobLevelResponse.from_json(json)
# print the JSON string representation of the object
print(JobLevelResponse.to_json())

# convert the object into a dict
job_level_response_dict = job_level_response_instance.to_dict()
# create an instance of JobLevelResponse from a dict
job_level_response_from_dict = JobLevelResponse.from_dict(job_level_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



