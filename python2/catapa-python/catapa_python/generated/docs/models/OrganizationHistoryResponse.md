# OrganizationHistoryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**organization** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**company** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**type** | **str** |  | 
**organization_hierarchy** | [**OrganizationHistoryHierarchyResponse**](OrganizationHistoryHierarchyResponse.md) |  | 
**organization_group** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**effective_date** | **date** |  | 
**end_date** | **date** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



