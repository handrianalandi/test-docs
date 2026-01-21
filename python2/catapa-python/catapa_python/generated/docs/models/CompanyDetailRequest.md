# CompanyDetailRequest

The Content-Type must be `application/json`

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**code** | **str** |  | [optional] 
**website** | **str** |  | [optional] 
**siup** | **str** | Alphanumeric, hyphen (-), slash (/), period (.), and space | [optional] 
**tdp** | **str** | Alphanumeric, hyphen (-), slash (/), period (.), and space | [optional] 
**time_zone** | [**CompanyDetailTimeZoneRequest**](CompanyDetailTimeZoneRequest.md) |  | 
**email** | **str** |  | 
**company_superior** | [**IdRequest**](IdRequest.md) |  | [optional] 
**location** | [**IdRequest**](IdRequest.md) |  | 

## Example

```python
from catapa import CompanyDetailRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CompanyDetailRequest from a JSON string
company_detail_request_instance = CompanyDetailRequest.from_json(json)
# print the JSON string representation of the object
print(CompanyDetailRequest.to_json())

# convert the object into a dict
company_detail_request_dict = company_detail_request_instance.to_dict()
# create an instance of CompanyDetailRequest from a dict
company_detail_request_from_dict = CompanyDetailRequest.from_dict(company_detail_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



