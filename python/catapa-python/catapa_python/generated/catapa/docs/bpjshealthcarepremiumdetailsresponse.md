# BpjsHealthcarePremiumDetailsResponse

## Properties

| Name                                 | Type                                                                                                | Description | Notes       |
| ------------------------------------ | --------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **employee\_id**                     | **str**                                                                                             |             | \[optional] |
| **employee\_identification\_number** | **str**                                                                                             |             | \[optional] |
| **employee\_name**                   | **str**                                                                                             |             | \[optional] |
| **monthly\_wage**                    | **float**                                                                                           |             | \[optional] |
| **current\_month\_detail**           | [**BpjsHealthcareCurrentMonthDetailResponse**](bpjshealthcarecurrentmonthdetailresponse.md)         |             | \[optional] |
| **details**                          | [**List\[BpjsHealthcarePremiumDetailsItemResponse\]**](bpjshealthcarepremiumdetailsitemresponse.md) |             | \[optional] |

## Example

```python
from catapa import BpjsHealthcarePremiumDetailsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcarePremiumDetailsResponse from a JSON string
bpjs_healthcare_premium_details_response_instance = BpjsHealthcarePremiumDetailsResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcarePremiumDetailsResponse.to_json())

# convert the object into a dict
bpjs_healthcare_premium_details_response_dict = bpjs_healthcare_premium_details_response_instance.to_dict()
# create an instance of BpjsHealthcarePremiumDetailsResponse from a dict
bpjs_healthcare_premium_details_response_from_dict = BpjsHealthcarePremiumDetailsResponse.from_dict(bpjs_healthcare_premium_details_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
