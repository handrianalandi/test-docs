# SeverancePlanListResponse

## Properties

| Name                     | Type                                                          | Description | Notes       |
| ------------------------ | ------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                       |             | \[optional] |
| **last**                 | **bool**                                                      |             | \[optional] |
| **total\_elements**      | **int**                                                       |             | \[optional] |
| **number\_of\_elements** | **int**                                                       |             | \[optional] |
| **has\_content**         | **bool**                                                      |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                   |             | \[optional] |
| **first**                | **bool**                                                      |             | \[optional] |
| **size**                 | **int**                                                       |             | \[optional] |
| **number**               | **int**                                                       |             | \[optional] |
| **content**              | [**List\[SeverancePlanResponse\]**](severanceplanresponse.md) |             | \[optional] |

## Example

```python
from catapa import SeverancePlanListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePlanListResponse from a JSON string
severance_plan_list_response_instance = SeverancePlanListResponse.from_json(json)
# print the JSON string representation of the object
print(SeverancePlanListResponse.to_json())

# convert the object into a dict
severance_plan_list_response_dict = severance_plan_list_response_instance.to_dict()
# create an instance of SeverancePlanListResponse from a dict
severance_plan_list_response_from_dict = SeverancePlanListResponse.from_dict(severance_plan_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
