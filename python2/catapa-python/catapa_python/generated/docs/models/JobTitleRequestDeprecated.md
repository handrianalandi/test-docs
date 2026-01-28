# JobTitleRequestDeprecated


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 
**min_job_level_id** | **str** |  | 
**max_job_level_id** | **str** |  | 

## Example

```python
from catapa import JobTitleRequestDeprecated

# TODO update the JSON string below
json = "{}"
# create an instance of JobTitleRequestDeprecated from a JSON string
job_title_request_deprecated_instance = JobTitleRequestDeprecated.from_json(json)
# print the JSON string representation of the object
print(JobTitleRequestDeprecated.to_json())

# convert the object into a dict
job_title_request_deprecated_dict = job_title_request_deprecated_instance.to_dict()
# create an instance of JobTitleRequestDeprecated from a dict
job_title_request_deprecated_from_dict = JobTitleRequestDeprecated.from_dict(job_title_request_deprecated_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



