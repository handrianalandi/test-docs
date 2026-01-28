# PaymentItemDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**amount** | **float** |  | 
**salary_item** | [**PaymentItemDetailSalaryItemResponse**](PaymentItemDetailSalaryItemResponse.md) |  | 

## Example

```python
from catapa import PaymentItemDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentItemDetailResponse from a JSON string
payment_item_detail_response_instance = PaymentItemDetailResponse.from_json(json)
# print the JSON string representation of the object
print(PaymentItemDetailResponse.to_json())

# convert the object into a dict
payment_item_detail_response_dict = payment_item_detail_response_instance.to_dict()
# create an instance of PaymentItemDetailResponse from a dict
payment_item_detail_response_from_dict = PaymentItemDetailResponse.from_dict(payment_item_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



