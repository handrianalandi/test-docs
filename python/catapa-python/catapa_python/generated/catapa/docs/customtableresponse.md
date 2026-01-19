# CustomTableResponse

## Properties

| Name                         | Type                                                                  | Description                               | Notes       |
| ---------------------------- | --------------------------------------------------------------------- | ----------------------------------------- | ----------- |
| **id**                       | **str**                                                               | Unique identifier of the custom table     | \[optional] |
| **table\_name**              | **str**                                                               | Technical name of the custom table        | \[optional] |
| **display\_name**            | **str**                                                               | Display name of the custom table          | \[optional] |
| **menu\_location**           | **str**                                                               | Location of the table in menu hierarchy   | \[optional] |
| **historical\_type**         | **str**                                                               | Type of historical tracking for the table | \[optional] |
| **parent\_entity**           | **str**                                                               | Parent entity reference                   | \[optional] |
| **parent\_reference\_field** | **str**                                                               | Field used for parent entity reference    | \[optional] |
| **columns**                  | [**List\[CustomTableColumnResponse\]**](customtablecolumnresponse.md) | List of columns in the table              | \[optional] |

## Example

```python
from catapa import CustomTableResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CustomTableResponse from a JSON string
custom_table_response_instance = CustomTableResponse.from_json(json)
# print the JSON string representation of the object
print(CustomTableResponse.to_json())

# convert the object into a dict
custom_table_response_dict = custom_table_response_instance.to_dict()
# create an instance of CustomTableResponse from a dict
custom_table_response_from_dict = CustomTableResponse.from_dict(custom_table_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
