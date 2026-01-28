# FamilyMemberRelationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**code** | **str** |  | 
**relation_type** | **str** |  | 

## Example

```python
from catapa import FamilyMemberRelationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyMemberRelationResponse from a JSON string
family_member_relation_response_instance = FamilyMemberRelationResponse.from_json(json)
# print the JSON string representation of the object
print(FamilyMemberRelationResponse.to_json())

# convert the object into a dict
family_member_relation_response_dict = family_member_relation_response_instance.to_dict()
# create an instance of FamilyMemberRelationResponse from a dict
family_member_relation_response_from_dict = FamilyMemberRelationResponse.from_dict(family_member_relation_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



