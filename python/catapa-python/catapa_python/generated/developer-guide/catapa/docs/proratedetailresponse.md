# ProrateDetailResponse

## Properties

| Name                         | Type                                                                                          | Description | Notes       |
| ---------------------------- | --------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **amount**                   | **float**                                                                                     |             | \[optional] |
| **effective\_date**          | **str**                                                                                       |             | \[optional] |
| **formula**                  | **str**                                                                                       |             | \[optional] |
| **prorated\_amount**         | **float**                                                                                     |             | \[optional] |
| **salary\_decree\_number**   | **str**                                                                                       |             | \[optional] |
| **salary\_template\_detail** | [**ProrateDetailSalaryTemplateDetailResponse**](proratedetailsalarytemplatedetailresponse.md) |             | \[optional] |

## Example

```python
from catapa import ProrateDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProrateDetailResponse from a JSON string
prorate_detail_response_instance = ProrateDetailResponse.from_json(json)
# print the JSON string representation of the object
print(ProrateDetailResponse.to_json())

# convert the object into a dict
prorate_detail_response_dict = prorate_detail_response_instance.to_dict()
# create an instance of ProrateDetailResponse from a dict
prorate_detail_response_from_dict = ProrateDetailResponse.from_dict(prorate_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
