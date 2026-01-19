# PayslipAdditionalNoteListResponse

## Properties

| Name        | Type                                                                          | Description | Notes       |
| ----------- | ----------------------------------------------------------------------------- | ----------- | ----------- |
| **content** | [**List\[PayslipAdditionalNoteResponse\]**](payslipadditionalnoteresponse.md) |             | \[optional] |

## Example

```python
from catapa import PayslipAdditionalNoteListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayslipAdditionalNoteListResponse from a JSON string
payslip_additional_note_list_response_instance = PayslipAdditionalNoteListResponse.from_json(json)
# print the JSON string representation of the object
print(PayslipAdditionalNoteListResponse.to_json())

# convert the object into a dict
payslip_additional_note_list_response_dict = payslip_additional_note_list_response_instance.to_dict()
# create an instance of PayslipAdditionalNoteListResponse from a dict
payslip_additional_note_list_response_from_dict = PayslipAdditionalNoteListResponse.from_dict(payslip_additional_note_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
