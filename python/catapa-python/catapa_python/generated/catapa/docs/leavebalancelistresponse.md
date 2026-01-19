# LeaveBalanceListResponse

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
| **content**              | [**List\[LeaveBalanceItemResponse\]**](leavebalanceitemresponse.md) |             | \[optional] |

## Example

```python
from catapa import LeaveBalanceListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of LeaveBalanceListResponse from a JSON string
leave_balance_list_response_instance = LeaveBalanceListResponse.from_json(json)
# print the JSON string representation of the object
print(LeaveBalanceListResponse.to_json())

# convert the object into a dict
leave_balance_list_response_dict = leave_balance_list_response_instance.to_dict()
# create an instance of LeaveBalanceListResponse from a dict
leave_balance_list_response_from_dict = LeaveBalanceListResponse.from_dict(leave_balance_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
