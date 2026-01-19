# TerminationReasonCategoryListResponse

## Properties

| Name                     | Type                                                                                  | Description | Notes       |
| ------------------------ | ------------------------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                               |             | \[optional] |
| **last**                 | **bool**                                                                              |             | \[optional] |
| **total\_elements**      | **int**                                                                               |             | \[optional] |
| **number\_of\_elements** | **int**                                                                               |             | \[optional] |
| **has\_content**         | **bool**                                                                              |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                                           |             | \[optional] |
| **first**                | **bool**                                                                              |             | \[optional] |
| **size**                 | **int**                                                                               |             | \[optional] |
| **number**               | **int**                                                                               |             | \[optional] |
| **content**              | [**List\[TerminationReasonCategoryResponse\]**](terminationreasoncategoryresponse.md) |             | \[optional] |

## Example

```python
from catapa import TerminationReasonCategoryListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationReasonCategoryListResponse from a JSON string
termination_reason_category_list_response_instance = TerminationReasonCategoryListResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationReasonCategoryListResponse.to_json())

# convert the object into a dict
termination_reason_category_list_response_dict = termination_reason_category_list_response_instance.to_dict()
# create an instance of TerminationReasonCategoryListResponse from a dict
termination_reason_category_list_response_from_dict = TerminationReasonCategoryListResponse.from_dict(termination_reason_category_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
