# PaymentItemGroupResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**payment_type** | **str** |  | [optional] 
**start_process_date** | **str** |  | [optional] 
**end_process_date** | **str** |  | [optional] 
**job_level** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 
**location** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 
**payment_item_details** | [**List[PaymentItemDetailResponse]**](PaymentItemDetailResponse.md) |  | [optional] 

## Example

```python
from catapa import PaymentItemGroupResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentItemGroupResponse from a JSON string
payment_item_group_response_instance = PaymentItemGroupResponse.from_json(json)
# print the JSON string representation of the object
print(PaymentItemGroupResponse.to_json())

# convert the object into a dict
payment_item_group_response_dict = payment_item_group_response_instance.to_dict()
# create an instance of PaymentItemGroupResponse from a dict
payment_item_group_response_from_dict = PaymentItemGroupResponse.from_dict(payment_item_group_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



