# EditableSalaryPreprocessRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_identification_number** | **str** | Employee identification number | [optional] 
**salary_item_code** | **str** | Salary item code | [optional] 
**amount** | **float** | Amount | [optional] 
**period** | **int** | Period | [optional] 
**year** | **int** | Year | [optional] 

## Example

```python
from catapa import EditableSalaryPreprocessRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EditableSalaryPreprocessRequest from a JSON string
editable_salary_preprocess_request_instance = EditableSalaryPreprocessRequest.from_json(json)
# print the JSON string representation of the object
print(EditableSalaryPreprocessRequest.to_json())

# convert the object into a dict
editable_salary_preprocess_request_dict = editable_salary_preprocess_request_instance.to_dict()
# create an instance of EditableSalaryPreprocessRequest from a dict
editable_salary_preprocess_request_from_dict = EditableSalaryPreprocessRequest.from_dict(editable_salary_preprocess_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



