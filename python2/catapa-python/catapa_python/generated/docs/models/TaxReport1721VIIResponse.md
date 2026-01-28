# TaxReport1721VIIResponse


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
**income** | **float** | Total income amount | 
**tax** | **float** | Tax amount | 

## Example

```python
from catapa import TaxReport1721VIIResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxReport1721VIIResponse from a JSON string
tax_report1721_vii_response_instance = TaxReport1721VIIResponse.from_json(json)
# print the JSON string representation of the object
print(TaxReport1721VIIResponse.to_json())

# convert the object into a dict
tax_report1721_vii_response_dict = tax_report1721_vii_response_instance.to_dict()
# create an instance of TaxReport1721VIIResponse from a dict
tax_report1721_vii_response_from_dict = TaxReport1721VIIResponse.from_dict(tax_report1721_vii_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



