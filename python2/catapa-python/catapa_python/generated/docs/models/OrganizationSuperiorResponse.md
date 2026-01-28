# OrganizationSuperiorResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**organization** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**superior** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**effective_date** | **date** |  | 

## Example

```python
from catapa import OrganizationSuperiorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationSuperiorResponse from a JSON string
organization_superior_response_instance = OrganizationSuperiorResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationSuperiorResponse.to_json())

# convert the object into a dict
organization_superior_response_dict = organization_superior_response_instance.to_dict()
# create an instance of OrganizationSuperiorResponse from a dict
organization_superior_response_from_dict = OrganizationSuperiorResponse.from_dict(organization_superior_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



