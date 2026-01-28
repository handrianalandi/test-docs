# ShiftResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**time_in** | **str** |  | 
**time_out** | **str** |  | 
**time_in_utc** | **float** |  | 
**time_out_utc** | **float** |  | 
**break_start_utc** | **float** |  | 
**break_end_utc** | **float** |  | 
**color** | **str** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



