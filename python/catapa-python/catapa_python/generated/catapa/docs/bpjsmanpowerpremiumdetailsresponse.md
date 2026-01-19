# BpjsManpowerPremiumDetailsResponse

## Properties

| Name                                 | Type                                                                                            | Description         | Notes       |
| ------------------------------------ | ----------------------------------------------------------------------------------------------- | ------------------- | ----------- |
| **employee\_id**                     | **str**                                                                                         |                     | \[optional] |
| **employee\_identification\_number** | **str**                                                                                         |                     | \[optional] |
| **employee\_name**                   | **str**                                                                                         |                     | \[optional] |
| **monthly\_wage**                    | **float**                                                                                       |                     | \[optional] |
| **current\_month\_detail**           | [**BpjsManpowerCurrentMonthDetailResponse**](bpjsmanpowercurrentmonthdetailresponse.md)         |                     | \[optional] |
| **details**                          | [**List\[BpjsManpowerPremiumDetailsItemResponse\]**](bpjsmanpowerpremiumdetailsitemresponse.md) | Possible empty list | \[optional] |

## Example

```python
from catapa import BpjsManpowerPremiumDetailsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerPremiumDetailsResponse from a JSON string
bpjs_manpower_premium_details_response_instance = BpjsManpowerPremiumDetailsResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerPremiumDetailsResponse.to_json())

# convert the object into a dict
bpjs_manpower_premium_details_response_dict = bpjs_manpower_premium_details_response_instance.to_dict()
# create an instance of BpjsManpowerPremiumDetailsResponse from a dict
bpjs_manpower_premium_details_response_from_dict = BpjsManpowerPremiumDetailsResponse.from_dict(bpjs_manpower_premium_details_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
