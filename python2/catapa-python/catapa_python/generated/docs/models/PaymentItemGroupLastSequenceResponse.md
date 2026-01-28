# PaymentItemGroupLastSequenceResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_id** | **str** |  | 
**last_sequence** | **int** |  | 

## Example

```python
from catapa import PaymentItemGroupLastSequenceResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentItemGroupLastSequenceResponse from a JSON string
payment_item_group_last_sequence_response_instance = PaymentItemGroupLastSequenceResponse.from_json(json)
# print the JSON string representation of the object
print(PaymentItemGroupLastSequenceResponse.to_json())

# convert the object into a dict
payment_item_group_last_sequence_response_dict = payment_item_group_last_sequence_response_instance.to_dict()
# create an instance of PaymentItemGroupLastSequenceResponse from a dict
payment_item_group_last_sequence_response_from_dict = PaymentItemGroupLastSequenceResponse.from_dict(payment_item_group_last_sequence_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



