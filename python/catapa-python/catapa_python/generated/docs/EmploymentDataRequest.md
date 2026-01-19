# EmploymentDataRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_start** | **date** | YYYY-MM-DD | [optional] 
**contract_end** | **date** | YYYY-MM-DD | [optional] 
**effective_date** | **date** | YYYY-MM-DD | 
**employment_status_number** | **str** |  | 
**employment_status_type_id** | **str** |  | 
**employment_type_id** | **str** |  | 
**job_level_id** | **str** |  | 
**job_title_id** | **str** |  | 
**location_id** | **str** |  | 
**organization_id** | **str** |  | 
**cost_center_id** | **str** |  | [optional] 
**permanent_date** | **date** | YYYY-MM-DD | [optional] 
**sign_date** | **date** | YYYY-MM-DD | 
**generate_employment_status_number** | **bool** |  | [optional] [default to False]
**sub_location_id** | **str** |  | [optional] 
**operational_group_id** | **str** |  | [optional] 

## Example

```python
from catapa import EmploymentDataRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentDataRequest from a JSON string
employment_data_request_instance = EmploymentDataRequest.from_json(json)
# print the JSON string representation of the object
print(EmploymentDataRequest.to_json())

# convert the object into a dict
employment_data_request_dict = employment_data_request_instance.to_dict()
# create an instance of EmploymentDataRequest from a dict
employment_data_request_from_dict = EmploymentDataRequest.from_dict(employment_data_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



