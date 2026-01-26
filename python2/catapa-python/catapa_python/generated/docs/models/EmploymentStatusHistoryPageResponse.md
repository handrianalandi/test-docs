# EmploymentStatusHistoryPageResponse


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
**content** | [**List[EmploymentStatusHistoryDetailResponse]**](EmploymentStatusHistoryDetailResponse.md) |  | [optional] 

## Example

```python
from catapa import EmploymentStatusHistoryPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentStatusHistoryPageResponse from a JSON string
employment_status_history_page_response_instance = EmploymentStatusHistoryPageResponse.from_json(json)
# print the JSON string representation of the object
print(EmploymentStatusHistoryPageResponse.to_json())

# convert the object into a dict
employment_status_history_page_response_dict = employment_status_history_page_response_instance.to_dict()
# create an instance of EmploymentStatusHistoryPageResponse from a dict
employment_status_history_page_response_from_dict = EmploymentStatusHistoryPageResponse.from_dict(employment_status_history_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



