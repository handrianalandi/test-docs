# FieldOfStudyResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**code** | **str** |  | [optional] 

## Example

```python
from catapa import FieldOfStudyResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FieldOfStudyResponse from a JSON string
field_of_study_response_instance = FieldOfStudyResponse.from_json(json)
# print the JSON string representation of the object
print(FieldOfStudyResponse.to_json())

# convert the object into a dict
field_of_study_response_dict = field_of_study_response_instance.to_dict()
# create an instance of FieldOfStudyResponse from a dict
field_of_study_response_from_dict = FieldOfStudyResponse.from_dict(field_of_study_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



