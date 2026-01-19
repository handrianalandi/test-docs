# PaymentItemGroupResponse

## Properties

| Name                       | Type                                                                  | Description | Notes       |
| -------------------------- | --------------------------------------------------------------------- | ----------- | ----------- |
| **id**                     | **str**                                                               |             | \[optional] |
| **payment\_type**          | **str**                                                               |             | \[optional] |
| **start\_process\_date**   | **str**                                                               |             | \[optional] |
| **end\_process\_date**     | **str**                                                               |             | \[optional] |
| **job\_level**             | [**IdCodeNameResponse**](idcodenameresponse.md)                       |             | \[optional] |
| **location**               | [**IdCodeNameResponse**](idcodenameresponse.md)                       |             | \[optional] |
| **payment\_item\_details** | [**List\[PaymentItemDetailResponse\]**](paymentitemdetailresponse.md) |             | \[optional] |

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

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
