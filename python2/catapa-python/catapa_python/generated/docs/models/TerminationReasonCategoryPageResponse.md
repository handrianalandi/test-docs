# TerminationReasonCategoryPageResponse


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
**content** | [**List[TerminationReasonCategoryResponse]**](TerminationReasonCategoryResponse.md) |  | 

## Example

```python
from catapa import TerminationReasonCategoryPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationReasonCategoryPageResponse from a JSON string
termination_reason_category_page_response_instance = TerminationReasonCategoryPageResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationReasonCategoryPageResponse.to_json())

# convert the object into a dict
termination_reason_category_page_response_dict = termination_reason_category_page_response_instance.to_dict()
# create an instance of TerminationReasonCategoryPageResponse from a dict
termination_reason_category_page_response_from_dict = TerminationReasonCategoryPageResponse.from_dict(termination_reason_category_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



