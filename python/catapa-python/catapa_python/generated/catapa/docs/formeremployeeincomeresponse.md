# FormerEmployeeIncomeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Former employee income ID | [optional] 
**item_name** | **str** | Income item name | [optional] 
**item_type** | **str** | Income item type | [optional] 
**reference_date** | **date** | Reference date | [optional] 
**pph21_method** | **str** | PPH21 calculation method | [optional] 
**minimum_last_working_date** | **date** | Minimum last working date | [optional] 
**proportional_method** | **str** | Proportional calculation method | [optional] 
**proportional_days** | **int** | Number of proportional days | [optional] 
**formula** | **str** | Calculation formula | [optional] 

## Example

```python
from catapa import FormerEmployeeIncomeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FormerEmployeeIncomeResponse from a JSON string
former_employee_income_response_instance = FormerEmployeeIncomeResponse.from_json(json)
# print the JSON string representation of the object
print(FormerEmployeeIncomeResponse.to_json())

# convert the object into a dict
former_employee_income_response_dict = former_employee_income_response_instance.to_dict()
# create an instance of FormerEmployeeIncomeResponse from a dict
former_employee_income_response_from_dict = FormerEmployeeIncomeResponse.from_dict(former_employee_income_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



