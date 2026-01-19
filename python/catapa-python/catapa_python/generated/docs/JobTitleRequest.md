# JobTitleRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 
**job_levels** | [**List[IdRequest]**](IdRequest.md) |  | [optional] 

## Example

```python
from catapa import JobTitleRequest

# TODO update the JSON string below
json = "{}"
# create an instance of JobTitleRequest from a JSON string
job_title_request_instance = JobTitleRequest.from_json(json)
# print the JSON string representation of the object
print(JobTitleRequest.to_json())

# convert the object into a dict
job_title_request_dict = job_title_request_instance.to_dict()
# create an instance of JobTitleRequest from a dict
job_title_request_from_dict = JobTitleRequest.from_dict(job_title_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



