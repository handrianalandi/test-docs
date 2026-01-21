# JobLevelListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[JobLevelResponse]**](JobLevelResponse.md) |  | [optional] 

## Example

```python
from catapa import JobLevelListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of JobLevelListResponse from a JSON string
job_level_list_response_instance = JobLevelListResponse.from_json(json)
# print the JSON string representation of the object
print(JobLevelListResponse.to_json())

# convert the object into a dict
job_level_list_response_dict = job_level_list_response_instance.to_dict()
# create an instance of JobLevelListResponse from a dict
job_level_list_response_from_dict = JobLevelListResponse.from_dict(job_level_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



