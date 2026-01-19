# Page

## Properties

| Name                     | Type                                        | Description | Notes       |
| ------------------------ | ------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                     |             | \[optional] |
| **last**                 | **bool**                                    |             | \[optional] |
| **total\_elements**      | **int**                                     |             | \[optional] |
| **number\_of\_elements** | **int**                                     |             | \[optional] |
| **has\_content**         | **bool**                                    |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md) |             | \[optional] |
| **first**                | **bool**                                    |             | \[optional] |
| **size**                 | **int**                                     |             | \[optional] |
| **number**               | **int**                                     |             | \[optional] |

## Example

```python
from catapa import Page

# TODO update the JSON string below
json = "{}"
# create an instance of Page from a JSON string
page_instance = Page.from_json(json)
# print the JSON string representation of the object
print(Page.to_json())

# convert the object into a dict
page_dict = page_instance.to_dict()
# create an instance of Page from a dict
page_from_dict = Page.from_dict(page_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
