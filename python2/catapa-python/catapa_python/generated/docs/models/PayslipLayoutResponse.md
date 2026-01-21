# PayslipLayoutResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**html** | **str** |  | [optional] 
**section** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 

## Example

```python
from catapa import PayslipLayoutResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayslipLayoutResponse from a JSON string
payslip_layout_response_instance = PayslipLayoutResponse.from_json(json)
# print the JSON string representation of the object
print(PayslipLayoutResponse.to_json())

# convert the object into a dict
payslip_layout_response_dict = payslip_layout_response_instance.to_dict()
# create an instance of PayslipLayoutResponse from a dict
payslip_layout_response_from_dict = PayslipLayoutResponse.from_dict(payslip_layout_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



