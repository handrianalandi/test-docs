# SeverancePlanResponseWithDetail

## Properties

| Name                | Type                                                                        | Description | Notes       |
| ------------------- | --------------------------------------------------------------------------- | ----------- | ----------- |
| **id**              | **UUID**                                                                    |             | \[optional] |
| **kpp**             | [**KppSimpleResponse**](kppsimpleresponse.md)                               |             | \[optional] |
| **payment\_method** | **str**                                                                     |             | \[optional] |
| **pph21\_method**   | **str**                                                                     |             | \[optional] |
| **payment\_option** | **str**                                                                     |             | \[optional] |
| **total**           | **float**                                                                   |             | \[optional] |
| **total\_thp**      | **float**                                                                   |             | \[optional] |
| **total\_pph**      | **float**                                                                   |             | \[optional] |
| **tax\_allowance**  | **float**                                                                   |             | \[optional] |
| **details**         | [**List\[SeverancePlanDetailResponse\]**](severanceplandetailresponse.md)   |             | \[optional] |
| **payment\_plans**  | [**List\[SeverancePaymentPlanResponse\]**](severancepaymentplanresponse.md) |             | \[optional] |

## Example

```python
from catapa import SeverancePlanResponseWithDetail

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePlanResponseWithDetail from a JSON string
severance_plan_response_with_detail_instance = SeverancePlanResponseWithDetail.from_json(json)
# print the JSON string representation of the object
print(SeverancePlanResponseWithDetail.to_json())

# convert the object into a dict
severance_plan_response_with_detail_dict = severance_plan_response_with_detail_instance.to_dict()
# create an instance of SeverancePlanResponseWithDetail from a dict
severance_plan_response_with_detail_from_dict = SeverancePlanResponseWithDetail.from_dict(severance_plan_response_with_detail_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
