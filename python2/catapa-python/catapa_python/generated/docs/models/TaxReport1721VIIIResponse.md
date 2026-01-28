# TaxReport1721VIIIResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | 
**year** | **float** |  | 
**month** | **float** |  | 
**sequence_number** | **float** |  | 
**npwp_number** | **str** |  | 
**address** | **str** |  | 
**monthly_gross_income** | **float** |  | 
**monthly_tax** | [**TaxAmountResponse**](TaxAmountResponse.md) |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



