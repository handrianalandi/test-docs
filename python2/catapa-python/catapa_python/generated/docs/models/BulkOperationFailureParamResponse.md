# BulkOperationFailureParamResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**reason** | **str** |  | [optional] 

## Example

```python
from catapa import BulkOperationFailureParamResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BulkOperationFailureParamResponse from a JSON string
bulk_operation_failure_param_response_instance = BulkOperationFailureParamResponse.from_json(json)
# print the JSON string representation of the object
print(BulkOperationFailureParamResponse.to_json())

# convert the object into a dict
bulk_operation_failure_param_response_dict = bulk_operation_failure_param_response_instance.to_dict()
# create an instance of BulkOperationFailureParamResponse from a dict
bulk_operation_failure_param_response_from_dict = BulkOperationFailureParamResponse.from_dict(bulk_operation_failure_param_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



