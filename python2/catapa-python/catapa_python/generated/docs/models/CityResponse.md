# CityResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**state** | [**StateResponse**](StateResponse.md) |  | [optional] 

## Example

```python
from catapa import CityResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CityResponse from a JSON string
city_response_instance = CityResponse.from_json(json)
# print the JSON string representation of the object
print(CityResponse.to_json())

# convert the object into a dict
city_response_dict = city_response_instance.to_dict()
# create an instance of CityResponse from a dict
city_response_from_dict = CityResponse.from_dict(city_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



