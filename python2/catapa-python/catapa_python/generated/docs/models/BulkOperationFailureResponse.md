# BulkOperationFailureResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**message** | **str** |  | 
**params** | [**BulkOperationFailureParamResponse**](BulkOperationFailureParamResponse.md) |  | 

## Example

```python
from catapa import BulkOperationFailureResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BulkOperationFailureResponse from a JSON string
bulk_operation_failure_response_instance = BulkOperationFailureResponse.from_json(json)
# print the JSON string representation of the object
print(BulkOperationFailureResponse.to_json())

# convert the object into a dict
bulk_operation_failure_response_dict = bulk_operation_failure_response_instance.to_dict()
# create an instance of BulkOperationFailureResponse from a dict
bulk_operation_failure_response_from_dict = BulkOperationFailureResponse.from_dict(bulk_operation_failure_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



