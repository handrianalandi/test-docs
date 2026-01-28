# TaxCalculationPageResponse


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
**content** | [**List[TaxCalculationDetailResponse]**](TaxCalculationDetailResponse.md) |  | 

## Example

```python
from catapa import TaxCalculationPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxCalculationPageResponse from a JSON string
tax_calculation_page_response_instance = TaxCalculationPageResponse.from_json(json)
# print the JSON string representation of the object
print(TaxCalculationPageResponse.to_json())

# convert the object into a dict
tax_calculation_page_response_dict = tax_calculation_page_response_instance.to_dict()
# create an instance of TaxCalculationPageResponse from a dict
tax_calculation_page_response_from_dict = TaxCalculationPageResponse.from_dict(tax_calculation_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



