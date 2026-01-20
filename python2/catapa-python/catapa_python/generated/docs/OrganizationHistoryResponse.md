# OrganizationHistoryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**organization** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 
**company** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 
**type** | **str** |  | [optional] 
**organization_hierarchy** | [**OrganizationHistoryHierarchyResponse**](OrganizationHistoryHierarchyResponse.md) |  | [optional] 
**organization_group** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 
**effective_date** | **date** |  | [optional] 
**end_date** | **date** |  | [optional] 

## Example

```python
from catapa import OrganizationHistoryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationHistoryResponse from a JSON string
organization_history_response_instance = OrganizationHistoryResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationHistoryResponse.to_json())

# convert the object into a dict
organization_history_response_dict = organization_history_response_instance.to_dict()
# create an instance of OrganizationHistoryResponse from a dict
organization_history_response_from_dict = OrganizationHistoryResponse.from_dict(organization_history_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



