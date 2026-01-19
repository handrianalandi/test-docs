# OtherLeaveBalanceItemResponse

## Properties

| Name                     | Type                                                        | Description | Notes       |
| ------------------------ | ----------------------------------------------------------- | ----------- | ----------- |
| **id**                   | **str**                                                     |             | \[optional] |
| **employee**             | [**EmployeeSimpleResponse**](employeesimpleresponse.md)     |             | \[optional] |
| **other\_leave\_status** | [**OtherLeaveStatusResponse**](otherleavestatusresponse.md) |             | \[optional] |
| **year**                 | **float**                                                   |             | \[optional] |
| **given\_date**          | **str**                                                     |             | \[optional] |
| **start\_date**          | **str**                                                     |             | \[optional] |
| **end\_date**            | **str**                                                     |             | \[optional] |
| **balance**              | **float**                                                   |             | \[optional] |
| **used\_balance**        | **float**                                                   |             | \[optional] |
| **pending\_balance**     | **float**                                                   |             | \[optional] |
| **approved\_balance**    | **float**                                                   |             | \[optional] |
| **remaining**            | **float**                                                   |             | \[optional] |
| **min\_leave\_date**     | **str**                                                     |             | \[optional] |
| **max\_leave\_date**     | **str**                                                     |             | \[optional] |
| **active**               | **bool**                                                    |             | \[optional] |

## Example

```python
from catapa import OtherLeaveBalanceItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OtherLeaveBalanceItemResponse from a JSON string
other_leave_balance_item_response_instance = OtherLeaveBalanceItemResponse.from_json(json)
# print the JSON string representation of the object
print(OtherLeaveBalanceItemResponse.to_json())

# convert the object into a dict
other_leave_balance_item_response_dict = other_leave_balance_item_response_instance.to_dict()
# create an instance of OtherLeaveBalanceItemResponse from a dict
other_leave_balance_item_response_from_dict = OtherLeaveBalanceItemResponse.from_dict(other_leave_balance_item_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
