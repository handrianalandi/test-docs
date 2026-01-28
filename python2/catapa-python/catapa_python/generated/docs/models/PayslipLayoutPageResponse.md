# PayslipLayoutPageResponse


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
**content** | [**List[PayslipLayoutResponse]**](PayslipLayoutResponse.md) |  | 

## Example

```python
from catapa import PayslipLayoutPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayslipLayoutPageResponse from a JSON string
payslip_layout_page_response_instance = PayslipLayoutPageResponse.from_json(json)
# print the JSON string representation of the object
print(PayslipLayoutPageResponse.to_json())

# convert the object into a dict
payslip_layout_page_response_dict = payslip_layout_page_response_instance.to_dict()
# create an instance of PayslipLayoutPageResponse from a dict
payslip_layout_page_response_from_dict = PayslipLayoutPageResponse.from_dict(payslip_layout_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



