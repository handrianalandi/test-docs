# EmploymentStatusHistoryDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**contract_start** | **date** | YYYY-MM-DD | [optional] 
**contract_end** | **date** | YYYY-MM-DD | [optional] 
**cost_center** | [**CostCenterListItemResponse**](CostCenterListItemResponse.md) |  | [optional] 
**effective_date** | **date** | YYYY-MM-DD | [optional] 
**end_date** | **date** | YYYY-MM-DD | [optional] 
**employment_status_number** | **str** |  | [optional] 
**employment_status_type** | [**EmploymentStatusTypeResponse**](EmploymentStatusTypeResponse.md) |  | [optional] 
**employment_type** | [**EmploymentTypeResponse**](EmploymentTypeResponse.md) |  | [optional] 
**job_level** | [**JobLevelResponse**](JobLevelResponse.md) |  | [optional] 
**job_title** | [**JobTitleResponse**](JobTitleResponse.md) |  | [optional] 
**location** | [**LocationResponse**](LocationResponse.md) |  | [optional] 
**organization** | [**OrganizationResponse**](OrganizationResponse.md) |  | [optional] 
**permanent_date** | **date** | YYYY-MM-DD | [optional] 
**sign_date** | **date** | YYYY-MM-DD | [optional] 
**sub_location** | [**SubLocationResponse**](SubLocationResponse.md) |  | [optional] 
**operational_group** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 
**position** | [**EmploymentStatusDetailPositionResponse**](EmploymentStatusDetailPositionResponse.md) |  | [optional] 

## Example

```python
from catapa import EmploymentStatusHistoryDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentStatusHistoryDetailResponse from a JSON string
employment_status_history_detail_response_instance = EmploymentStatusHistoryDetailResponse.from_json(json)
# print the JSON string representation of the object
print(EmploymentStatusHistoryDetailResponse.to_json())

# convert the object into a dict
employment_status_history_detail_response_dict = employment_status_history_detail_response_instance.to_dict()
# create an instance of EmploymentStatusHistoryDetailResponse from a dict
employment_status_history_detail_response_from_dict = EmploymentStatusHistoryDetailResponse.from_dict(employment_status_history_detail_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



