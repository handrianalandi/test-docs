# CompanyDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**code** | **str** |  | 
**website** | **str** |  | 
**siup** | **str** |  | 
**tdp** | **str** |  | 
**logo** | **str** |  | 
**logo_original_filename** | **str** |  | 
**logo_file_metadata** | [**LogoFileMetadataResponse**](LogoFileMetadataResponse.md) |  | 
**time_zone** | [**TimeZoneResponse**](TimeZoneResponse.md) |  | 
**email** | **str** |  | 
**company_superior** | [**CompanySuperiorResponse**](CompanySuperiorResponse.md) |  | 
**location** | [**LocationResponse**](LocationResponse.md) |  | 
**company_group** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 

## Example

```python
from catapa import CompanyDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CompanyDetailResponse from a JSON string
company_detail_response_instance = CompanyDetailResponse.from_json(json)
# print the JSON string representation of the object
print(CompanyDetailResponse.to_json())

# convert the object into a dict
company_detail_response_dict = company_detail_response_instance.to_dict()
# create an instance of CompanyDetailResponse from a dict
company_detail_response_from_dict = CompanyDetailResponse.from_dict(company_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



