# PositionHistoryOrganizationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**company** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 

## Example

```python
from catapa import PositionHistoryOrganizationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionHistoryOrganizationResponse from a JSON string
position_history_organization_response_instance = PositionHistoryOrganizationResponse.from_json(json)
# print the JSON string representation of the object
print(PositionHistoryOrganizationResponse.to_json())

# convert the object into a dict
position_history_organization_response_dict = position_history_organization_response_instance.to_dict()
# create an instance of PositionHistoryOrganizationResponse from a dict
position_history_organization_response_from_dict = PositionHistoryOrganizationResponse.from_dict(position_history_organization_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



