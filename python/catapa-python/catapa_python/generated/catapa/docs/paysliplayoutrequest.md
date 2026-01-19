# PayslipLayoutRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**html** | **str** |  | 
**section** | **str** |  | 
**effective_date** | **str** |  | 

## Example

```python
from catapa import PayslipLayoutRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PayslipLayoutRequest from a JSON string
payslip_layout_request_instance = PayslipLayoutRequest.from_json(json)
# print the JSON string representation of the object
print(PayslipLayoutRequest.to_json())

# convert the object into a dict
payslip_layout_request_dict = payslip_layout_request_instance.to_dict()
# create an instance of PayslipLayoutRequest from a dict
payslip_layout_request_from_dict = PayslipLayoutRequest.from_dict(payslip_layout_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



