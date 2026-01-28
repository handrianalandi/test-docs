# PaymentItemGroupPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[PaymentItemGroupResponse]**](PaymentItemGroupResponse.md) |  | 

## Example

```python
from catapa import PaymentItemGroupPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentItemGroupPageResponse from a JSON string
payment_item_group_page_response_instance = PaymentItemGroupPageResponse.from_json(json)
# print the JSON string representation of the object
print(PaymentItemGroupPageResponse.to_json())

# convert the object into a dict
payment_item_group_page_response_dict = payment_item_group_page_response_instance.to_dict()
# create an instance of PaymentItemGroupPageResponse from a dict
payment_item_group_page_response_from_dict = PaymentItemGroupPageResponse.from_dict(payment_item_group_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



