# EducationLevelResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**code** | **str** |  | [optional] 

## Example

```python
from catapa import EducationLevelResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EducationLevelResponse from a JSON string
education_level_response_instance = EducationLevelResponse.from_json(json)
# print the JSON string representation of the object
print(EducationLevelResponse.to_json())

# convert the object into a dict
education_level_response_dict = education_level_response_instance.to_dict()
# create an instance of EducationLevelResponse from a dict
education_level_response_from_dict = EducationLevelResponse.from_dict(education_level_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



