# TaxCalculationDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **float** |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | [optional] 
**external_id** | **str** |  | [optional] 
**year** | **float** |  | [optional] 
**month** | **float** |  | [optional] 
**pph21_method** | **str** |  | [optional] 
**membership_number** | **str** |  | [optional] 
**membership_address** | **str** |  | [optional] 
**total_monthly_gross_income** | **float** |  | [optional] 
**total_tax_and_allowance** | [**TaxAndAllowanceResponse**](TaxAndAllowanceResponse.md) |  | [optional] 
**paid_tax_and_allowance** | [**TaxAndAllowanceResponse**](TaxAndAllowanceResponse.md) |  | [optional] 
**type** | **str** |  | [optional] 
**tax_object** | **str** |  | [optional] 
**reference_year** | **float** |  | [optional] 
**reference_month** | **float** |  | [optional] 
**multiplier** | **float** |  | [optional] 
**calculation_type** | **str** |  | [optional] 
**payment_method** | **str** |  | [optional] 
**reference_date** | **date** |  | [optional] 
**payment_date** | **date** |  | [optional] 

## Example

```python
from catapa import TaxCalculationDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxCalculationDetailResponse from a JSON string
tax_calculation_detail_response_instance = TaxCalculationDetailResponse.from_json(json)
# print the JSON string representation of the object
print(TaxCalculationDetailResponse.to_json())

# convert the object into a dict
tax_calculation_detail_response_dict = tax_calculation_detail_response_instance.to_dict()
# create an instance of TaxCalculationDetailResponse from a dict
tax_calculation_detail_response_from_dict = TaxCalculationDetailResponse.from_dict(tax_calculation_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



