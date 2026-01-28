# BpjsManpowerPremiumSummaryPageResponse


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
**content** | [**List[BpjsManpowerPremiumSummaryListItemResponse]**](BpjsManpowerPremiumSummaryListItemResponse.md) |  | 

## Example

```python
from catapa import BpjsManpowerPremiumSummaryPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerPremiumSummaryPageResponse from a JSON string
bpjs_manpower_premium_summary_page_response_instance = BpjsManpowerPremiumSummaryPageResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerPremiumSummaryPageResponse.to_json())

# convert the object into a dict
bpjs_manpower_premium_summary_page_response_dict = bpjs_manpower_premium_summary_page_response_instance.to_dict()
# create an instance of BpjsManpowerPremiumSummaryPageResponse from a dict
bpjs_manpower_premium_summary_page_response_from_dict = BpjsManpowerPremiumSummaryPageResponse.from_dict(bpjs_manpower_premium_summary_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



