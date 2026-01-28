# EmploymentStatusTypePageResponse


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
**content** | [**List[EmploymentStatusTypeResponse]**](EmploymentStatusTypeResponse.md) |  | 

## Example

```python
from catapa import EmploymentStatusTypePageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentStatusTypePageResponse from a JSON string
employment_status_type_page_response_instance = EmploymentStatusTypePageResponse.from_json(json)
# print the JSON string representation of the object
print(EmploymentStatusTypePageResponse.to_json())

# convert the object into a dict
employment_status_type_page_response_dict = employment_status_type_page_response_instance.to_dict()
# create an instance of EmploymentStatusTypePageResponse from a dict
employment_status_type_page_response_from_dict = EmploymentStatusTypePageResponse.from_dict(employment_status_type_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



