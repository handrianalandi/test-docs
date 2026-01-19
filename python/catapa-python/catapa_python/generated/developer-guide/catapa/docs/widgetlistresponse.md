# WidgetListResponse

## Properties

| Name                     | Type                                            | Description     | Notes       |
| ------------------------ | ----------------------------------------------- | --------------- | ----------- |
| **total\_pages**         | **int**                                         |                 | \[optional] |
| **last**                 | **bool**                                        |                 | \[optional] |
| **total\_elements**      | **int**                                         |                 | \[optional] |
| **number\_of\_elements** | **int**                                         |                 | \[optional] |
| **has\_content**         | **bool**                                        |                 | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)     |                 | \[optional] |
| **first**                | **bool**                                        |                 | \[optional] |
| **size**                 | **int**                                         |                 | \[optional] |
| **number**               | **int**                                         |                 | \[optional] |
| **content**              | [**List\[WidgetResponse\]**](widgetresponse.md) | List of widgets | \[optional] |

## Example

```python
from catapa import WidgetListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WidgetListResponse from a JSON string
widget_list_response_instance = WidgetListResponse.from_json(json)
# print the JSON string representation of the object
print(WidgetListResponse.to_json())

# convert the object into a dict
widget_list_response_dict = widget_list_response_instance.to_dict()
# create an instance of WidgetListResponse from a dict
widget_list_response_from_dict = WidgetListResponse.from_dict(widget_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
