# TaxCalculationDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | 
**external_id** | **str** |  | 
**year** | **float** |  | 
**month** | **float** |  | 
**pph21_method** | **str** |  | 
**membership_number** | **str** |  | 
**membership_address** | **str** |  | 
**total_monthly_gross_income** | **float** |  | 
**total_tax_and_allowance** | [**TaxAndAllowanceResponse**](TaxAndAllowanceResponse.md) |  | 
**paid_tax_and_allowance** | [**TaxAndAllowanceResponse**](TaxAndAllowanceResponse.md) |  | 
**type** | **str** |  | 
**tax_object** | **str** |  | 
**reference_year** | **float** |  | 
**reference_month** | **float** |  | 
**multiplier** | **float** |  | 
**calculation_type** | **str** |  | 
**payment_method** | **str** |  | 
**reference_date** | **date** |  | 
**payment_date** | **date** |  | 

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



