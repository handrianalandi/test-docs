# MonthlyTaxDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**annual_calculation** | **bool** |  | [optional] 
**tax_object** | **str** |  | [optional] 
**year** | **int** |  | [optional] 
**month** | **int** |  | [optional] 
**employee_id** | **str** |  | [optional] 
**npwp_number** | **str** |  | [optional] 
**npwp_address** | **str** |  | [optional] 
**ptkp_category_code** | **str** |  | [optional] 
**ter_category** | **str** |  | [optional] 
**percentage** | **float** |  | [optional] 
**monthly_gross_income** | **float** |  | [optional] 
**tax** | [**TaxAmountResponse**](TaxAmountResponse.md) |  | [optional] 
**regular_tax** | [**TaxAmountResponse**](TaxAmountResponse.md) |  | [optional] 
**bonus_tax** | [**TaxAmountResponse**](TaxAmountResponse.md) |  | [optional] 
**income** | [**TaxIncomeResponse**](TaxIncomeResponse.md) |  | [optional] 
**positional_allowance** | **float** |  | [optional] 
**base_income_tax_deduction** | **float** |  | [optional] 

## Example

```python
from catapa import MonthlyTaxDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyTaxDetailResponse from a JSON string
monthly_tax_detail_response_instance = MonthlyTaxDetailResponse.from_json(json)
# print the JSON string representation of the object
print(MonthlyTaxDetailResponse.to_json())

# convert the object into a dict
monthly_tax_detail_response_dict = monthly_tax_detail_response_instance.to_dict()
# create an instance of MonthlyTaxDetailResponse from a dict
monthly_tax_detail_response_from_dict = MonthlyTaxDetailResponse.from_dict(monthly_tax_detail_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



