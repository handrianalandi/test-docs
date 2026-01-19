# TaxMembershipHistoryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier for the tax membership | 
**foreign_tax_object** | **bool** | Whether this is a foreign tax object | 
**kpp_id** | **str** | Tax office (KPP) identifier | 
**link_to_payroll** | **bool** | Whether this tax membership is linked to payroll | 
**membership_end_period** | [**TaxMembershipPeriodResponse**](TaxMembershipPeriodResponse.md) |  | 
**membership_start_period** | [**TaxMembershipPeriodResponse**](TaxMembershipPeriodResponse.md) |  | 
**effective_end_period** | [**TaxMembershipPeriodResponse**](TaxMembershipPeriodResponse.md) |  | [optional] 
**effective_start_period** | [**TaxMembershipPeriodResponse**](TaxMembershipPeriodResponse.md) |  | [optional] 
**method** | **str** | PPh21 calculation method | 
**more_than_one_employer** | **bool** | Whether employee has more than one employer | 
**npwp_address** | **str** | Address registered with NPWP | 
**npwp_number** | **str** | NPWP (Tax ID) number - can be empty or contain only digits | 
**tin** | **str** | Tax Identification Number | [optional] 
**previous_net_income** | **float** | Previous net income amount | 
**previous_paid_pph** | **float** | Previous paid PPh amount | 
**ptkp_category_id** | **str** | PTKP (Personal Tax Free Income) category identifier | 
**tax_object** | **str** | Type of tax object for the employee | 
**use_recommended_period** | **bool** |  | [optional] 
**tax_dependents** | [**List[TaxDependentResponse]**](TaxDependentResponse.md) | List of tax dependents for PTKP calculation | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 

## Example

```python
from catapa import TaxMembershipHistoryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxMembershipHistoryResponse from a JSON string
tax_membership_history_response_instance = TaxMembershipHistoryResponse.from_json(json)
# print the JSON string representation of the object
print(TaxMembershipHistoryResponse.to_json())

# convert the object into a dict
tax_membership_history_response_dict = tax_membership_history_response_instance.to_dict()
# create an instance of TaxMembershipHistoryResponse from a dict
tax_membership_history_response_from_dict = TaxMembershipHistoryResponse.from_dict(tax_membership_history_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



