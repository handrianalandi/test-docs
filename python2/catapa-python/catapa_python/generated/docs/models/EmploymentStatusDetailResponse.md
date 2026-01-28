# EmploymentStatusDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**contract_start** | **date** | YYYY-MM-DD | 
**contract_end** | **date** | YYYY-MM-DD | 
**cost_center** | [**CostCenterListItemResponse**](CostCenterListItemResponse.md) |  | 
**effective_date** | **date** | YYYY-MM-DD | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 
**employment_status_number** | **str** |  | 
**employment_status_type** | [**EmploymentStatusTypeResponse**](EmploymentStatusTypeResponse.md) |  | 
**employment_type** | [**EmploymentTypeResponse**](EmploymentTypeResponse.md) |  | 
**job_level** | [**JobLevelResponse**](JobLevelResponse.md) |  | 
**job_title** | [**JobTitleResponse**](JobTitleResponse.md) |  | 
**location** | [**LocationResponse**](LocationResponse.md) |  | 
**organization** | [**OrganizationResponse**](OrganizationResponse.md) |  | 
**permanent_date** | **date** | YYYY-MM-DD | 
**sign_date** | **date** | YYYY-MM-DD | 
**sub_location** | [**SubLocationResponse**](SubLocationResponse.md) |  | 
**operational_group** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**position** | [**EmploymentStatusDetailPositionResponse**](EmploymentStatusDetailPositionResponse.md) |  | 

## Example

```python
from catapa import EmploymentStatusDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentStatusDetailResponse from a JSON string
employment_status_detail_response_instance = EmploymentStatusDetailResponse.from_json(json)
# print the JSON string representation of the object
print(EmploymentStatusDetailResponse.to_json())

# convert the object into a dict
employment_status_detail_response_dict = employment_status_detail_response_instance.to_dict()
# create an instance of EmploymentStatusDetailResponse from a dict
employment_status_detail_response_from_dict = EmploymentStatusDetailResponse.from_dict(employment_status_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



