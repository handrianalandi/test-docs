# CountryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**calling_code** | **str** |  | [optional] 
**tax_treaty** | **bool** |  | [optional] 

## Example

```python
from catapa import CountryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CountryResponse from a JSON string
country_response_instance = CountryResponse.from_json(json)
# print the JSON string representation of the object
print(CountryResponse.to_json())

# convert the object into a dict
country_response_dict = country_response_instance.to_dict()
# create an instance of CountryResponse from a dict
country_response_from_dict = CountryResponse.from_dict(country_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



