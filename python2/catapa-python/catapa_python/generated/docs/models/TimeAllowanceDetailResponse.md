# TimeAllowanceDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **float** |  | 
**var_date** | **str** |  | 

## Example

```python
from catapa import TimeAllowanceDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TimeAllowanceDetailResponse from a JSON string
time_allowance_detail_response_instance = TimeAllowanceDetailResponse.from_json(json)
# print the JSON string representation of the object
print(TimeAllowanceDetailResponse.to_json())

# convert the object into a dict
time_allowance_detail_response_dict = time_allowance_detail_response_instance.to_dict()
# create an instance of TimeAllowanceDetailResponse from a dict
time_allowance_detail_response_from_dict = TimeAllowanceDetailResponse.from_dict(time_allowance_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



