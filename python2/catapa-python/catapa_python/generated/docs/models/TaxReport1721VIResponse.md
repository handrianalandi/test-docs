# TaxReport1721VIResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | [optional] 
**year** | **float** | Tax report year | [optional] 
**month** | **float** | Tax report month | [optional] 
**sequence_number** | **float** | Report sequence number | [optional] 
**npwp_number** | **str** | NPWP (Tax identification number) | [optional] 
**monthly_gross_income** | **float** | Monthly gross income amount | [optional] 
**tax** | [**TaxCalculationResponse**](TaxCalculationResponse.md) |  | [optional] 

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



