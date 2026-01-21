# SalaryCalculationDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **float** |  | [optional] 
**id** | **str** |  | [optional] 
**salary_item_category** | **str** |  | [optional] 
**salary_item_code** | **str** |  | [optional] 
**salary_item_name** | **str** |  | [optional] 
**salary_item_type** | **str** |  | [optional] 
**thp** | **bool** |  | [optional] 

## Example

```python
from catapa import SalaryCalculationDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryCalculationDetailResponse from a JSON string
salary_calculation_detail_response_instance = SalaryCalculationDetailResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryCalculationDetailResponse.to_json())

# convert the object into a dict
salary_calculation_detail_response_dict = salary_calculation_detail_response_instance.to_dict()
# create an instance of SalaryCalculationDetailResponse from a dict
salary_calculation_detail_response_from_dict = SalaryCalculationDetailResponse.from_dict(salary_calculation_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



