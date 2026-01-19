# SeverancePlanRequest

## Properties

| Name               | Type                                                                                      | Description | Notes |
| ------------------ | ----------------------------------------------------------------------------------------- | ----------- | ----- |
| **pph21\_method**  | **str**                                                                                   |             |       |
| **details**        | [**List\[SeverancePlanDetailItemRequest\]**](severanceplandetailitemrequest.md)           |             |       |
| **payment\_plans** | [**List\[SeverancePlanPaymentPlanItemRequest\]**](severanceplanpaymentplanitemrequest.md) |             |       |

## Example

```python
from catapa import SeverancePlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePlanRequest from a JSON string
severance_plan_request_instance = SeverancePlanRequest.from_json(json)
# print the JSON string representation of the object
print(SeverancePlanRequest.to_json())

# convert the object into a dict
severance_plan_request_dict = severance_plan_request_instance.to_dict()
# create an instance of SeverancePlanRequest from a dict
severance_plan_request_from_dict = SeverancePlanRequest.from_dict(severance_plan_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
