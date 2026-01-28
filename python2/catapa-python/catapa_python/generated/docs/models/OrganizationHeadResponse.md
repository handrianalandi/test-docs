# OrganizationHeadResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**effective_date** | **str** |  | 
**organization** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**position** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 

## Example

```python
from catapa import OrganizationHeadResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationHeadResponse from a JSON string
organization_head_response_instance = OrganizationHeadResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationHeadResponse.to_json())

# convert the object into a dict
organization_head_response_dict = organization_head_response_instance.to_dict()
# create an instance of OrganizationHeadResponse from a dict
organization_head_response_from_dict = OrganizationHeadResponse.from_dict(organization_head_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



