# PayslipAdditionalNotePageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[PayslipAdditionalNoteResponse]**](PayslipAdditionalNoteResponse.md) |  | [optional] 

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



