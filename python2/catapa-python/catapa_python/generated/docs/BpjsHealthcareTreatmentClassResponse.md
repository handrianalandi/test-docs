# BpjsHealthcareTreatmentClassResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**min_salary_type** | **str** |  | [optional] 
**min_salary_value** | **str** |  | [optional] 
**max_salary_type** | **str** |  | [optional] 
**max_salary_value** | **str** |  | [optional] 

## Example

```python
from catapa import BpjsHealthcareTreatmentClassResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcareTreatmentClassResponse from a JSON string
bpjs_healthcare_treatment_class_response_instance = BpjsHealthcareTreatmentClassResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcareTreatmentClassResponse.to_json())

# convert the object into a dict
bpjs_healthcare_treatment_class_response_dict = bpjs_healthcare_treatment_class_response_instance.to_dict()
# create an instance of BpjsHealthcareTreatmentClassResponse from a dict
bpjs_healthcare_treatment_class_response_from_dict = BpjsHealthcareTreatmentClassResponse.from_dict(bpjs_healthcare_treatment_class_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



