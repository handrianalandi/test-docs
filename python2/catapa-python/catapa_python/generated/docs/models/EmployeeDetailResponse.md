# EmployeeDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**marital_status** | **str** |  | 
**religion** | [**ReligionResponse**](ReligionResponse.md) |  | 
**foreign_labour** | **bool** |  | 
**citizenship** | [**CountryResponse**](CountryResponse.md) |  | 
**name** | **str** |  | 
**date_of_birth** | **date** | YYYY-MM-DD | 
**place_of_birth** | [**CityResponse**](CityResponse.md) |  | 
**gender** | **str** |  | 
**blood_type** | **str** |  | 
**effective_date** | **date** | YYYY-MM-DD | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 
**employee** | [**EmployeeFullResponse**](EmployeeFullResponse.md) |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



