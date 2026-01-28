# SalaryCalculationDetailPageResponse


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
**content** | [**List[SalaryCalculationDetailResponse]**](SalaryCalculationDetailResponse.md) |  | 

## Example

```python
from catapa import SalaryCalculationDetailPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryCalculationDetailPageResponse from a JSON string
salary_calculation_detail_page_response_instance = SalaryCalculationDetailPageResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryCalculationDetailPageResponse.to_json())

# convert the object into a dict
salary_calculation_detail_page_response_dict = salary_calculation_detail_page_response_instance.to_dict()
# create an instance of SalaryCalculationDetailPageResponse from a dict
salary_calculation_detail_page_response_from_dict = SalaryCalculationDetailPageResponse.from_dict(salary_calculation_detail_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



