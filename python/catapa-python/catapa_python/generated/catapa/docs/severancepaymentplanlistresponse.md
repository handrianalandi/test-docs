# SeverancePaymentPlanListResponse

## Properties

| Name                     | Type                                                                        | Description | Notes       |
| ------------------------ | --------------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                     |             | \[optional] |
| **last**                 | **bool**                                                                    |             | \[optional] |
| **total\_elements**      | **int**                                                                     |             | \[optional] |
| **number\_of\_elements** | **int**                                                                     |             | \[optional] |
| **has\_content**         | **bool**                                                                    |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                                 |             | \[optional] |
| **first**                | **bool**                                                                    |             | \[optional] |
| **size**                 | **int**                                                                     |             | \[optional] |
| **number**               | **int**                                                                     |             | \[optional] |
| **content**              | [**List\[SeverancePaymentPlanResponse\]**](severancepaymentplanresponse.md) |             | \[optional] |

## Example

```python
from catapa import SeverancePaymentPlanListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePaymentPlanListResponse from a JSON string
severance_payment_plan_list_response_instance = SeverancePaymentPlanListResponse.from_json(json)
# print the JSON string representation of the object
print(SeverancePaymentPlanListResponse.to_json())

# convert the object into a dict
severance_payment_plan_list_response_dict = severance_payment_plan_list_response_instance.to_dict()
# create an instance of SeverancePaymentPlanListResponse from a dict
severance_payment_plan_list_response_from_dict = SeverancePaymentPlanListResponse.from_dict(severance_payment_plan_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
