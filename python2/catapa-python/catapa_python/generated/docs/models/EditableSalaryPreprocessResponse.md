# EditableSalaryPreprocessResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successes** | [**List[EditableSalaryPreprocessSuccess]**](EditableSalaryPreprocessSuccess.md) |  | 
**failures** | [**List[BulkOperationFailureResponse]**](BulkOperationFailureResponse.md) |  | 

## Example

```python
from catapa import EditableSalaryPreprocessResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EditableSalaryPreprocessResponse from a JSON string
editable_salary_preprocess_response_instance = EditableSalaryPreprocessResponse.from_json(json)
# print the JSON string representation of the object
print(EditableSalaryPreprocessResponse.to_json())

# convert the object into a dict
editable_salary_preprocess_response_dict = editable_salary_preprocess_response_instance.to_dict()
# create an instance of EditableSalaryPreprocessResponse from a dict
editable_salary_preprocess_response_from_dict = EditableSalaryPreprocessResponse.from_dict(editable_salary_preprocess_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



