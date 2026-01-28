# TaxReport1721VIResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | 
**year** | **float** | Tax report year | 
**month** | **float** | Tax report month | 
**sequence_number** | **float** | Report sequence number | 
**npwp_number** | **str** | NPWP (Tax identification number) | 
**monthly_gross_income** | **float** | Monthly gross income amount | 
**tax** | [**TaxCalculationResponse**](TaxCalculationResponse.md) |  | 

## Example

```python
from catapa import TaxReport1721VIResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxReport1721VIResponse from a JSON string
tax_report1721_vi_response_instance = TaxReport1721VIResponse.from_json(json)
# print the JSON string representation of the object
print(TaxReport1721VIResponse.to_json())

# convert the object into a dict
tax_report1721_vi_response_dict = tax_report1721_vi_response_instance.to_dict()
# create an instance of TaxReport1721VIResponse from a dict
tax_report1721_vi_response_from_dict = TaxReport1721VIResponse.from_dict(tax_report1721_vi_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



