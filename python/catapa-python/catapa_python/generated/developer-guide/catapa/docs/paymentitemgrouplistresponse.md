# PaymentItemGroupListResponse

## Properties

| Name                     | Type                                                                | Description | Notes       |
| ------------------------ | ------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                             |             | \[optional] |
| **last**                 | **bool**                                                            |             | \[optional] |
| **total\_elements**      | **int**                                                             |             | \[optional] |
| **number\_of\_elements** | **int**                                                             |             | \[optional] |
| **has\_content**         | **bool**                                                            |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                         |             | \[optional] |
| **first**                | **bool**                                                            |             | \[optional] |
| **size**                 | **int**                                                             |             | \[optional] |
| **number**               | **int**                                                             |             | \[optional] |
| **content**              | [**List\[PaymentItemGroupResponse\]**](paymentitemgroupresponse.md) |             | \[optional] |

## Example

```python
from catapa import PaymentItemGroupListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentItemGroupListResponse from a JSON string
payment_item_group_list_response_instance = PaymentItemGroupListResponse.from_json(json)
# print the JSON string representation of the object
print(PaymentItemGroupListResponse.to_json())

# convert the object into a dict
payment_item_group_list_response_dict = payment_item_group_list_response_instance.to_dict()
# create an instance of PaymentItemGroupListResponse from a dict
payment_item_group_list_response_from_dict = PaymentItemGroupListResponse.from_dict(payment_item_group_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
