# ShiftResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**time_in** | **str** |  | [optional] 
**time_out** | **str** |  | [optional] 
**time_in_utc** | **float** |  | [optional] 
**time_out_utc** | **float** |  | [optional] 
**break_start_utc** | **float** |  | [optional] 
**break_end_utc** | **float** |  | [optional] 
**color** | **str** |  | [optional] 

## Example

```python
from catapa import ShiftResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ShiftResponse from a JSON string
shift_response_instance = ShiftResponse.from_json(json)
# print the JSON string representation of the object
print(ShiftResponse.to_json())

# convert the object into a dict
shift_response_dict = shift_response_instance.to_dict()
# create an instance of ShiftResponse from a dict
shift_response_from_dict = ShiftResponse.from_dict(shift_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



