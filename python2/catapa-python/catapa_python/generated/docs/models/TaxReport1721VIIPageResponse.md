# TaxReport1721VIIPageResponse


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
**content** | [**List[TaxReport1721VIIResponse]**](TaxReport1721VIIResponse.md) |  | 

## Example

```python
from catapa import TaxReport1721VIIPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxReport1721VIIPageResponse from a JSON string
tax_report1721_vii_page_response_instance = TaxReport1721VIIPageResponse.from_json(json)
# print the JSON string representation of the object
print(TaxReport1721VIIPageResponse.to_json())

# convert the object into a dict
tax_report1721_vii_page_response_dict = tax_report1721_vii_page_response_instance.to_dict()
# create an instance of TaxReport1721VIIPageResponse from a dict
tax_report1721_vii_page_response_from_dict = TaxReport1721VIIPageResponse.from_dict(tax_report1721_vii_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



