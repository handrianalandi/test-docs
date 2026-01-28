# OrganizationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**organization_hierarchy_id** | **str** |  | 
**organization_parent_id** | **str** |  | 
**name** | **str** |  | 
**type** | **str** |  | 
**organization_group_id** | **str** |  | 
**company_id** | **str** | If the request is null, then it will default to the earliest company created in the system. | 

## Example

```python
from catapa import OrganizationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationRequest from a JSON string
organization_request_instance = OrganizationRequest.from_json(json)
# print the JSON string representation of the object
print(OrganizationRequest.to_json())

# convert the object into a dict
organization_request_dict = organization_request_instance.to_dict()
# create an instance of OrganizationRequest from a dict
organization_request_from_dict = OrganizationRequest.from_dict(organization_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



