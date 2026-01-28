# EmploymentDataResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**contract_start** | **date** | YYYY-MM-DD | 
**contract_end** | **date** | YYYY-MM-DD | 
**cost_center** | [**CostCenterResponse**](CostCenterResponse.md) |  | 
**effective_date** | **date** | YYYY-MM-DD | 
**employment_status_number** | **str** |  | 
**employment_status_type** | [**EmploymentStatusTypeResponse**](EmploymentStatusTypeResponse.md) |  | 
**employment_type** | [**EmploymentTypeResponse**](EmploymentTypeResponse.md) |  | 
**job_level** | [**JobLevelResponse**](JobLevelResponse.md) |  | 
**job_title** | [**JobTitleResponse**](JobTitleResponse.md) |  | 
**location** | [**LocationResponse**](LocationResponse.md) |  | 
**organization** | [**OrganizationResponse**](OrganizationResponse.md) |  | 
**position** | [**EmploymentDataPositionResponse**](EmploymentDataPositionResponse.md) |  | 
**permanent_date** | **date** | YYYY-MM-DD | 
**sign_date** | **date** | YYYY-MM-DD | 
**sub_location** | [**SubLocationResponse**](SubLocationResponse.md) |  | 
**operational_group** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 

## Example

```python
from catapa import EmploymentDataResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentDataResponse from a JSON string
employment_data_response_instance = EmploymentDataResponse.from_json(json)
# print the JSON string representation of the object
print(EmploymentDataResponse.to_json())

# convert the object into a dict
employment_data_response_dict = employment_data_response_instance.to_dict()
# create an instance of EmploymentDataResponse from a dict
employment_data_response_from_dict = EmploymentDataResponse.from_dict(employment_data_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



