# TaxReport1721VIIIResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | [optional] 
**year** | **float** |  | [optional] 
**month** | **float** |  | [optional] 
**sequence_number** | **float** |  | [optional] 
**npwp_number** | **str** |  | [optional] 
**address** | **str** |  | [optional] 
**monthly_gross_income** | **float** |  | [optional] 
**monthly_tax** | [**TaxAmountResponse**](TaxAmountResponse.md) |  | [optional] 

## Example

```python
from catapa import TaxReport1721VIIIResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxReport1721VIIIResponse from a JSON string
tax_report1721_viii_response_instance = TaxReport1721VIIIResponse.from_json(json)
# print the JSON string representation of the object
print(TaxReport1721VIIIResponse.to_json())

# convert the object into a dict
tax_report1721_viii_response_dict = tax_report1721_viii_response_instance.to_dict()
# create an instance of TaxReport1721VIIIResponse from a dict
tax_report1721_viii_response_from_dict = TaxReport1721VIIIResponse.from_dict(tax_report1721_viii_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



