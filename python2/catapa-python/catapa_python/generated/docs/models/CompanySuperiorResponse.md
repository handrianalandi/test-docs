# CompanySuperiorResponse


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
**location** | [**LocationResponse**](LocationResponse.md) |  | 

## Example

```python
from catapa import CompanySuperiorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CompanySuperiorResponse from a JSON string
company_superior_response_instance = CompanySuperiorResponse.from_json(json)
# print the JSON string representation of the object
print(CompanySuperiorResponse.to_json())

# convert the object into a dict
company_superior_response_dict = company_superior_response_instance.to_dict()
# create an instance of CompanySuperiorResponse from a dict
company_superior_response_from_dict = CompanySuperiorResponse.from_dict(company_superior_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



