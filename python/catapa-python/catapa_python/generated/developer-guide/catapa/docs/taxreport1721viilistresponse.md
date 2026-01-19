# TaxReport1721VIIListResponse

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
| **content**              | [**List\[TaxReport1721VIIResponse\]**](taxreport1721viiresponse.md) |             | \[optional] |

## Example

```python
from catapa import TaxReport1721VIIListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxReport1721VIIListResponse from a JSON string
tax_report1721_vii_list_response_instance = TaxReport1721VIIListResponse.from_json(json)
# print the JSON string representation of the object
print(TaxReport1721VIIListResponse.to_json())

# convert the object into a dict
tax_report1721_vii_list_response_dict = tax_report1721_vii_list_response_instance.to_dict()
# create an instance of TaxReport1721VIIListResponse from a dict
tax_report1721_vii_list_response_from_dict = TaxReport1721VIIListResponse.from_dict(tax_report1721_vii_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
