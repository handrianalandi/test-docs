# PayslipAdditionalNoteResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**payment_date** | **str** |  | 
**note** | **str** |  | 

## Example

```python
from catapa import PayslipAdditionalNoteResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayslipAdditionalNoteResponse from a JSON string
payslip_additional_note_response_instance = PayslipAdditionalNoteResponse.from_json(json)
# print the JSON string representation of the object
print(PayslipAdditionalNoteResponse.to_json())

# convert the object into a dict
payslip_additional_note_response_dict = payslip_additional_note_response_instance.to_dict()
# create an instance of PayslipAdditionalNoteResponse from a dict
payslip_additional_note_response_from_dict = PayslipAdditionalNoteResponse.from_dict(payslip_additional_note_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



