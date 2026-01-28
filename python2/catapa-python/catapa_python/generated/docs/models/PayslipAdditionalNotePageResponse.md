# PayslipAdditionalNotePageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[PayslipAdditionalNoteResponse]**](PayslipAdditionalNoteResponse.md) |  | 

## Example

```python
from catapa import PayslipAdditionalNotePageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayslipAdditionalNotePageResponse from a JSON string
payslip_additional_note_page_response_instance = PayslipAdditionalNotePageResponse.from_json(json)
# print the JSON string representation of the object
print(PayslipAdditionalNotePageResponse.to_json())

# convert the object into a dict
payslip_additional_note_page_response_dict = payslip_additional_note_page_response_instance.to_dict()
# create an instance of PayslipAdditionalNotePageResponse from a dict
payslip_additional_note_page_response_from_dict = PayslipAdditionalNotePageResponse.from_dict(payslip_additional_note_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



