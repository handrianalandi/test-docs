# RejectApprovalRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Approval ID | 
**reason** | **str** | Reason of Rejection | 

## Example

```python
from catapa import RejectApprovalRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RejectApprovalRequest from a JSON string
reject_approval_request_instance = RejectApprovalRequest.from_json(json)
# print the JSON string representation of the object
print(RejectApprovalRequest.to_json())

# convert the object into a dict
reject_approval_request_dict = reject_approval_request_instance.to_dict()
# create an instance of RejectApprovalRequest from a dict
reject_approval_request_from_dict = RejectApprovalRequest.from_dict(reject_approval_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



