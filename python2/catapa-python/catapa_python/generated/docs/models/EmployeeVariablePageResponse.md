# EmployeeVariablePageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[EmployeeVariableResponse]**](EmployeeVariableResponse.md) |  | 

## Example

```python
from catapa import EmployeeVariablePageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeVariablePageResponse from a JSON string
employee_variable_page_response_instance = EmployeeVariablePageResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeVariablePageResponse.to_json())

# convert the object into a dict
employee_variable_page_response_dict = employee_variable_page_response_instance.to_dict()
# create an instance of EmployeeVariablePageResponse from a dict
employee_variable_page_response_from_dict = EmployeeVariablePageResponse.from_dict(employee_variable_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



