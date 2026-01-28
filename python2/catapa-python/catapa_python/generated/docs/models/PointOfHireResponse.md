# PointOfHireResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**location_group** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**city** | [**CityResponse**](CityResponse.md) |  | 
**latitude** | **float** |  | 
**longitude** | **float** |  | 
**address** | **str** |  | 
**phone** | **str** |  | 
**zip_code** | **str** |  | 
**headquarter** | **bool** |  | 
**company** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 

## Example

```python
from catapa import PointOfHireResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PointOfHireResponse from a JSON string
point_of_hire_response_instance = PointOfHireResponse.from_json(json)
# print the JSON string representation of the object
print(PointOfHireResponse.to_json())

# convert the object into a dict
point_of_hire_response_dict = point_of_hire_response_instance.to_dict()
# create an instance of PointOfHireResponse from a dict
point_of_hire_response_from_dict = PointOfHireResponse.from_dict(point_of_hire_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



