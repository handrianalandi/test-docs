# SeverancePlanResponse

## Properties

| Name                | Type                                          | Description | Notes       |
| ------------------- | --------------------------------------------- | ----------- | ----------- |
| **id**              | **UUID**                                      |             | \[optional] |
| **kpp**             | [**KppSimpleResponse**](kppsimpleresponse.md) |             | \[optional] |
| **payment\_method** | **str**                                       |             | \[optional] |
| **pph21\_method**   | **str**                                       |             | \[optional] |
| **payment\_option** | **str**                                       |             | \[optional] |
| **total**           | **float**                                     |             | \[optional] |
| **total\_thp**      | **float**                                     |             | \[optional] |
| **total\_pph**      | **float**                                     |             | \[optional] |
| **tax\_allowance**  | **float**                                     |             | \[optional] |

## Example

```python
from catapa import SeverancePlanResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePlanResponse from a JSON string
severance_plan_response_instance = SeverancePlanResponse.from_json(json)
# print the JSON string representation of the object
print(SeverancePlanResponse.to_json())

# convert the object into a dict
severance_plan_response_dict = severance_plan_response_instance.to_dict()
# create an instance of SeverancePlanResponse from a dict
severance_plan_response_from_dict = SeverancePlanResponse.from_dict(severance_plan_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
