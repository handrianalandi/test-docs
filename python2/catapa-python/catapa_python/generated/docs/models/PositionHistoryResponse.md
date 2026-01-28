# PositionHistoryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**position** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**organization** | [**PositionHistoryOrganizationResponse**](PositionHistoryOrganizationResponse.md) |  | 
**effective_date** | **str** |  | 
**end_date** | **str** |  | 

## Example

```python
from catapa import PositionHistoryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionHistoryResponse from a JSON string
position_history_response_instance = PositionHistoryResponse.from_json(json)
# print the JSON string representation of the object
print(PositionHistoryResponse.to_json())

# convert the object into a dict
position_history_response_dict = position_history_response_instance.to_dict()
# create an instance of PositionHistoryResponse from a dict
position_history_response_from_dict = PositionHistoryResponse.from_dict(position_history_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



