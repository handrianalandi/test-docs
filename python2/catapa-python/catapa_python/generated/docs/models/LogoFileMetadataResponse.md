# LogoFileMetadataResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filename** | **str** |  | [optional] 
**path** | **str** |  | [optional] 
**url** | **str** |  | [optional] 

## Example

```python
from catapa import LogoFileMetadataResponse

# TODO update the JSON string below
json = "{}"
# create an instance of LogoFileMetadataResponse from a JSON string
logo_file_metadata_response_instance = LogoFileMetadataResponse.from_json(json)
# print the JSON string representation of the object
print(LogoFileMetadataResponse.to_json())

# convert the object into a dict
logo_file_metadata_response_dict = logo_file_metadata_response_instance.to_dict()
# create an instance of LogoFileMetadataResponse from a dict
logo_file_metadata_response_from_dict = LogoFileMetadataResponse.from_dict(logo_file_metadata_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



