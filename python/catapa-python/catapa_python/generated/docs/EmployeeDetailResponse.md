# EmployeeDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**marital_status** | **str** |  | [optional] 
**religion** | [**ReligionResponse**](ReligionResponse.md) |  | [optional] 
**foreign_labour** | **bool** |  | [optional] 
**citizenship** | [**CountryResponse**](CountryResponse.md) |  | [optional] 
**name** | **str** |  | [optional] 
**date_of_birth** | **date** | YYYY-MM-DD | [optional] 
**place_of_birth** | [**CityResponse**](CityResponse.md) |  | [optional] 
**gender** | **str** |  | [optional] 
**blood_type** | **str** |  | [optional] 
**effective_date** | **date** | YYYY-MM-DD | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **float** |  | [optional] 
**employee** | [**EmployeeFullResponse**](EmployeeFullResponse.md) |  | [optional] 

## Example

```python
from catapa import EmployeeDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeDetailResponse from a JSON string
employee_detail_response_instance = EmployeeDetailResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeDetailResponse.to_json())

# convert the object into a dict
employee_detail_response_dict = employee_detail_response_instance.to_dict()
# create an instance of EmployeeDetailResponse from a dict
employee_detail_response_from_dict = EmployeeDetailResponse.from_dict(employee_detail_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



