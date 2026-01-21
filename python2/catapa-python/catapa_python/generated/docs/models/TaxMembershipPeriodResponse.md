# TaxMembershipPeriodResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**month** | **int** | Month of membership start period | [optional] 
**year** | **int** | Year of membership start period | [optional] 

## Example

```python
from catapa import TaxMembershipPeriodResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxMembershipPeriodResponse from a JSON string
tax_membership_period_response_instance = TaxMembershipPeriodResponse.from_json(json)
# print the JSON string representation of the object
print(TaxMembershipPeriodResponse.to_json())

# convert the object into a dict
tax_membership_period_response_dict = tax_membership_period_response_instance.to_dict()
# create an instance of TaxMembershipPeriodResponse from a dict
tax_membership_period_response_from_dict = TaxMembershipPeriodResponse.from_dict(tax_membership_period_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



