# TaxReport1721A1Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | 
**external_id** | **str** |  | 
**year** | **float** |  | 
**end_month** | **float** |  | 
**sequence_number** | **float** |  | 
**membership_number** | **str** |  | 
**ptkp** | **float** |  | 
**job_title** | **str** |  | 
**total_gross_income** | **float** |  | 
**outstanding_original_tax** | **float** |  | 
**outstanding_penalty_tax** | **float** |  | 
**outstanding_tax** | **float** |  | 
**paid_original_tax** | **float** |  | 
**paid_penalty_tax** | **float** |  | 
**paid_tax** | **float** |  | 
**paid_tax_allowance** | **float** |  | 
**basic_salary** | **float** |  | 
**tax_allowance** | **float** |  | 
**other_allowance** | **float** |  | 
**honorarium** | **float** |  | 
**insurance_premium** | **float** |  | 
**enjoyment_revenue** | **float** |  | 
**bonus** | **float** |  | 
**retirement_contribution** | **float** |  | 
**total_deduction** | **float** |  | 
**net_income** | **float** |  | 
**previous_net_income** | **float** |  | 
**total_net_income** | **float** |  | 
**base_income_tax_deduction** | **float** |  | 
**base_income_tax** | **float** |  | 
**yearly_original_tax** | **float** |  | 
**yearly_penalty_tax** | **float** |  | 
**yearly_tax** | **float** |  | 
**previous_original_tax** | **float** |  | 
**previous_penalty_tax** | **float** |  | 
**previous_tax** | **float** |  | 

## Example

```python
from catapa import TaxReport1721A1Response

# TODO update the JSON string below
json = "{}"
# create an instance of TaxReport1721A1Response from a JSON string
tax_report1721_a1_response_instance = TaxReport1721A1Response.from_json(json)
# print the JSON string representation of the object
print(TaxReport1721A1Response.to_json())

# convert the object into a dict
tax_report1721_a1_response_dict = tax_report1721_a1_response_instance.to_dict()
# create an instance of TaxReport1721A1Response from a dict
tax_report1721_a1_response_from_dict = TaxReport1721A1Response.from_dict(tax_report1721_a1_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



