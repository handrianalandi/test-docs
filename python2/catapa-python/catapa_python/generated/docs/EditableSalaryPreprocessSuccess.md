# EditableSalaryPreprocessSuccess


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_identification_number** | **str** |  | [optional] 
**salary_item_code** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 
**period** | **int** |  | [optional] 
**year** | **int** |  | [optional] 

## Example

```python
from catapa import EditableSalaryPreprocessSuccess

# TODO update the JSON string below
json = "{}"
# create an instance of EditableSalaryPreprocessSuccess from a JSON string
editable_salary_preprocess_success_instance = EditableSalaryPreprocessSuccess.from_json(json)
# print the JSON string representation of the object
print(EditableSalaryPreprocessSuccess.to_json())

# convert the object into a dict
editable_salary_preprocess_success_dict = editable_salary_preprocess_success_instance.to_dict()
# create an instance of EditableSalaryPreprocessSuccess from a dict
editable_salary_preprocess_success_from_dict = EditableSalaryPreprocessSuccess.from_dict(editable_salary_preprocess_success_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



