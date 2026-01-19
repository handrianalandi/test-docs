# TaxReport1721VIListResponse

## Properties

| Name                     | Type                                                              | Description | Notes       |
| ------------------------ | ----------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                           |             | \[optional] |
| **last**                 | **bool**                                                          |             | \[optional] |
| **total\_elements**      | **int**                                                           |             | \[optional] |
| **number\_of\_elements** | **int**                                                           |             | \[optional] |
| **has\_content**         | **bool**                                                          |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                       |             | \[optional] |
| **first**                | **bool**                                                          |             | \[optional] |
| **size**                 | **int**                                                           |             | \[optional] |
| **number**               | **int**                                                           |             | \[optional] |
| **content**              | [**List\[TaxReport1721VIResponse\]**](taxreport1721viresponse.md) |             | \[optional] |

## Example

```python
from catapa import TaxReport1721VIListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxReport1721VIListResponse from a JSON string
tax_report1721_vi_list_response_instance = TaxReport1721VIListResponse.from_json(json)
# print the JSON string representation of the object
print(TaxReport1721VIListResponse.to_json())

# convert the object into a dict
tax_report1721_vi_list_response_dict = tax_report1721_vi_list_response_instance.to_dict()
# create an instance of TaxReport1721VIListResponse from a dict
tax_report1721_vi_list_response_from_dict = TaxReport1721VIListResponse.from_dict(tax_report1721_vi_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
