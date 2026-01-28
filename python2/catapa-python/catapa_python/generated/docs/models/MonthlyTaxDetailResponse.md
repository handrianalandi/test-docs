# MonthlyTaxDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**annual_calculation** | **bool** |  | 
**tax_object** | **str** |  | 
**year** | **int** |  | 
**month** | **int** |  | 
**employee_id** | **str** |  | 
**npwp_number** | **str** |  | 
**npwp_address** | **str** |  | 
**ptkp_category_code** | **str** |  | 
**ter_category** | **str** |  | 
**percentage** | **float** |  | 
**monthly_gross_income** | **float** |  | 
**tax** | [**TaxAmountResponse**](TaxAmountResponse.md) |  | 
**regular_tax** | [**TaxAmountResponse**](TaxAmountResponse.md) |  | 
**bonus_tax** | [**TaxAmountResponse**](TaxAmountResponse.md) |  | 
**income** | [**TaxIncomeResponse**](TaxIncomeResponse.md) |  | 
**positional_allowance** | **float** |  | 
**base_income_tax_deduction** | **float** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



