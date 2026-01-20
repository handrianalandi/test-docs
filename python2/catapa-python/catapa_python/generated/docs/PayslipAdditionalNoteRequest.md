# PayslipAdditionalNoteRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_date** | **str** |  | 
**note** | **str** | Max length 150 | 

## Example

```python
from catapa import PayslipAdditionalNoteRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PayslipAdditionalNoteRequest from a JSON string
payslip_additional_note_request_instance = PayslipAdditionalNoteRequest.from_json(json)
# print the JSON string representation of the object
print(PayslipAdditionalNoteRequest.to_json())

# convert the object into a dict
payslip_additional_note_request_dict = payslip_additional_note_request_instance.to_dict()
# create an instance of PayslipAdditionalNoteRequest from a dict
payslip_additional_note_request_from_dict = PayslipAdditionalNoteRequest.from_dict(payslip_additional_note_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



