# EducationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**education_level** | [**EducationLevelResponse**](EducationLevelResponse.md) |  | [optional] 
**field_of_study** | [**FieldOfStudyResponse**](FieldOfStudyResponse.md) |  | [optional] 
**country** | [**CountryResponse**](CountryResponse.md) |  | [optional] 
**institution** | [**InstitutionResponse**](InstitutionResponse.md) |  | [optional] 
**start_date** | **str** |  | [optional] 
**graduation_date** | **str** |  | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **float** |  | [optional] 

## Example

```python
from catapa import EducationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EducationResponse from a JSON string
education_response_instance = EducationResponse.from_json(json)
# print the JSON string representation of the object
print(EducationResponse.to_json())

# convert the object into a dict
education_response_dict = education_response_instance.to_dict()
# create an instance of EducationResponse from a dict
education_response_from_dict = EducationResponse.from_dict(education_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



