# PaymentItemGroupSequenceResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_id** | **str** |  | [optional] 
**payment_item_group_id** | **str** |  | [optional] 
**sequence** | **int** |  | [optional] 
**previous_sequence** | **int** |  | [optional] 

## Example

```python
from catapa import PaymentItemGroupSequenceResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentItemGroupSequenceResponse from a JSON string
payment_item_group_sequence_response_instance = PaymentItemGroupSequenceResponse.from_json(json)
# print the JSON string representation of the object
print(PaymentItemGroupSequenceResponse.to_json())

# convert the object into a dict
payment_item_group_sequence_response_dict = payment_item_group_sequence_response_instance.to_dict()
# create an instance of PaymentItemGroupSequenceResponse from a dict
payment_item_group_sequence_response_from_dict = PaymentItemGroupSequenceResponse.from_dict(payment_item_group_sequence_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



