# TaxReport1721A1Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | [optional] 
**external_id** | **str** |  | [optional] 
**year** | **float** |  | [optional] 
**end_month** | **float** |  | [optional] 
**sequence_number** | **float** |  | [optional] 
**membership_number** | **str** |  | [optional] 
**ptkp** | **float** |  | [optional] 
**job_title** | **str** |  | [optional] 
**total_gross_income** | **float** |  | [optional] 
**outstanding_original_tax** | **float** |  | [optional] 
**outstanding_penalty_tax** | **float** |  | [optional] 
**outstanding_tax** | **float** |  | [optional] 
**paid_original_tax** | **float** |  | [optional] 
**paid_penalty_tax** | **float** |  | [optional] 
**paid_tax** | **float** |  | [optional] 
**paid_tax_allowance** | **float** |  | [optional] 
**basic_salary** | **float** |  | [optional] 
**tax_allowance** | **float** |  | [optional] 
**other_allowance** | **float** |  | [optional] 
**honorarium** | **float** |  | [optional] 
**insurance_premium** | **float** |  | [optional] 
**enjoyment_revenue** | **float** |  | [optional] 
**bonus** | **float** |  | [optional] 
**retirement_contribution** | **float** |  | [optional] 
**total_deduction** | **float** |  | [optional] 
**net_income** | **float** |  | [optional] 
**previous_net_income** | **float** |  | [optional] 
**total_net_income** | **float** |  | [optional] 
**base_income_tax_deduction** | **float** |  | [optional] 
**base_income_tax** | **float** |  | [optional] 
**yearly_original_tax** | **float** |  | [optional] 
**yearly_penalty_tax** | **float** |  | [optional] 
**yearly_tax** | **float** |  | [optional] 
**previous_original_tax** | **float** |  | [optional] 
**previous_penalty_tax** | **float** |  | [optional] 
**previous_tax** | **float** |  | [optional] 

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
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



