# ChartFilterRequest

## Properties

| Name                                  | Type                                                                                  | Description | Notes       |
| ------------------------------------- | ------------------------------------------------------------------------------------- | ----------- | ----------- |
| **column\_id**                        | **str**                                                                               |             | \[optional] |
| **chart\_filter\_type**               | **str**                                                                               |             | \[optional] |
| **chart\_value\_collection\_filters** | [**List\[ChartValueCollectionFilterRequest\]**](chartvaluecollectionfilterrequest.md) |             | \[optional] |
| **start\_date**                       | **str**                                                                               |             | \[optional] |
| **end\_date**                         | **str**                                                                               |             | \[optional] |
| **time\_frame**                       | **str**                                                                               |             | \[optional] |
| **time\_unit**                        | **str**                                                                               |             | \[optional] |
| **duration**                          | **float**                                                                             |             | \[optional] |

## Example

```python
from catapa import ChartFilterRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChartFilterRequest from a JSON string
chart_filter_request_instance = ChartFilterRequest.from_json(json)
# print the JSON string representation of the object
print(ChartFilterRequest.to_json())

# convert the object into a dict
chart_filter_request_dict = chart_filter_request_instance.to_dict()
# create an instance of ChartFilterRequest from a dict
chart_filter_request_from_dict = ChartFilterRequest.from_dict(chart_filter_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
