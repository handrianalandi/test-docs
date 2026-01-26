# FormerEmployeeIncomePageResponse


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
**content** | [**List[FormerEmployeeIncomeResponse]**](FormerEmployeeIncomeResponse.md) | List of former employee incomes | [optional] 

## Example

```python
from catapa import FormerEmployeeIncomePageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FormerEmployeeIncomePageResponse from a JSON string
former_employee_income_page_response_instance = FormerEmployeeIncomePageResponse.from_json(json)
# print the JSON string representation of the object
print(FormerEmployeeIncomePageResponse.to_json())

# convert the object into a dict
former_employee_income_page_response_dict = former_employee_income_page_response_instance.to_dict()
# create an instance of FormerEmployeeIncomePageResponse from a dict
former_employee_income_page_response_from_dict = FormerEmployeeIncomePageResponse.from_dict(former_employee_income_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



