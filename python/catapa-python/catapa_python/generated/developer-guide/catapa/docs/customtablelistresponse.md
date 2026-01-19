# CustomTableListResponse

## Properties

| Name                     | Type                                                      | Description | Notes       |
| ------------------------ | --------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                   |             | \[optional] |
| **last**                 | **bool**                                                  |             | \[optional] |
| **total\_elements**      | **int**                                                   |             | \[optional] |
| **number\_of\_elements** | **int**                                                   |             | \[optional] |
| **has\_content**         | **bool**                                                  |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)               |             | \[optional] |
| **first**                | **bool**                                                  |             | \[optional] |
| **size**                 | **int**                                                   |             | \[optional] |
| **number**               | **int**                                                   |             | \[optional] |
| **content**              | [**List\[CustomTableResponse\]**](customtableresponse.md) |             | \[optional] |

## Example

```python
from catapa import CustomTableListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CustomTableListResponse from a JSON string
custom_table_list_response_instance = CustomTableListResponse.from_json(json)
# print the JSON string representation of the object
print(CustomTableListResponse.to_json())

# convert the object into a dict
custom_table_list_response_dict = custom_table_list_response_instance.to_dict()
# create an instance of CustomTableListResponse from a dict
custom_table_list_response_from_dict = CustomTableListResponse.from_dict(custom_table_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
