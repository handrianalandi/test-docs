# AttendanceRecapitulationDetailPageResponse


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
**content** | [**List[AttendanceRecapitulationDetailItemResponse]**](AttendanceRecapitulationDetailItemResponse.md) |  | 

## Example

```python
from catapa import AttendanceRecapitulationDetailPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AttendanceRecapitulationDetailPageResponse from a JSON string
attendance_recapitulation_detail_page_response_instance = AttendanceRecapitulationDetailPageResponse.from_json(json)
# print the JSON string representation of the object
print(AttendanceRecapitulationDetailPageResponse.to_json())

# convert the object into a dict
attendance_recapitulation_detail_page_response_dict = attendance_recapitulation_detail_page_response_instance.to_dict()
# create an instance of AttendanceRecapitulationDetailPageResponse from a dict
attendance_recapitulation_detail_page_response_from_dict = AttendanceRecapitulationDetailPageResponse.from_dict(attendance_recapitulation_detail_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



