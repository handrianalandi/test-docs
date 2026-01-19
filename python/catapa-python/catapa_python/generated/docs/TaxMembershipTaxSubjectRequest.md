# TaxMembershipTaxSubjectRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**npwp_address** | **str** | Address registered with NPWP | 
**npwp_number** | **str** | NPWP (Tax ID) number - can be empty or contain only digits | [optional] 
**id_tku** | **str** | TKU (Tax Knowledge Unit) identifier | [optional] 
**tin** | **str** | Tax Identification Number | [optional] 
**kpp_id** | **str** | Tax office (KPP) identifier | [optional] 
**ptkp_category_id** | **str** | PTKP (Personal Tax Free Income) category identifier | [optional] 
**tax_dependents** | [**List[TaxDependentRequest]**](TaxDependentRequest.md) | List of tax dependents for PTKP calculation | [optional] 

## Example

```python
from catapa import TaxMembershipTaxSubjectRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TaxMembershipTaxSubjectRequest from a JSON string
tax_membership_tax_subject_request_instance = TaxMembershipTaxSubjectRequest.from_json(json)
# print the JSON string representation of the object
print(TaxMembershipTaxSubjectRequest.to_json())

# convert the object into a dict
tax_membership_tax_subject_request_dict = tax_membership_tax_subject_request_instance.to_dict()
# create an instance of TaxMembershipTaxSubjectRequest from a dict
tax_membership_tax_subject_request_from_dict = TaxMembershipTaxSubjectRequest.from_dict(tax_membership_tax_subject_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



