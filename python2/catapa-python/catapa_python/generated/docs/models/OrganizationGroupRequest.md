# OrganizationGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 

## Example

```python
from catapa import OrganizationGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationGroupRequest from a JSON string
organization_group_request_instance = OrganizationGroupRequest.from_json(json)
# print the JSON string representation of the object
print(OrganizationGroupRequest.to_json())

# convert the object into a dict
organization_group_request_dict = organization_group_request_instance.to_dict()
# create an instance of OrganizationGroupRequest from a dict
organization_group_request_from_dict = OrganizationGroupRequest.from_dict(organization_group_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



