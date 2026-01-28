# LocationCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 
**location_group** | [**IdRequest**](IdRequest.md) |  | 
**city** | [**IdRequest**](.md) |  | 
**latitude** | **float** |  | 
**longitude** | **float** |  | 
**address** | **str** |  | 
**phone** | **str** | e.g. &#x60;+6281234567890&#x60; | 
**zip_code** | **str** | Numeric | 
**headquarter** | **bool** | If value is true, will automatically update headquarter in company profile | 

## Example

```python
from catapa import LocationCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of LocationCreateRequest from a JSON string
location_create_request_instance = LocationCreateRequest.from_json(json)
# print the JSON string representation of the object
print(LocationCreateRequest.to_json())

# convert the object into a dict
location_create_request_dict = location_create_request_instance.to_dict()
# create an instance of LocationCreateRequest from a dict
location_create_request_from_dict = LocationCreateRequest.from_dict(location_create_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



