# LeaveBalanceItemResponse

## Properties

| Name                                  | Type                                                    | Description | Notes       |
| ------------------------------------- | ------------------------------------------------------- | ----------- | ----------- |
| **id**                                | **str**                                                 |             | \[optional] |
| **year**                              | **float**                                               |             | \[optional] |
| **accrual\_frequency\_type**          | **str**                                                 |             | \[optional] |
| **monthly\_accrual\_include\_bonus**  | **bool**                                                |             | \[optional] |
| **given\_date**                       | **str**                                                 |             | \[optional] |
| **start\_date**                       | **str**                                                 |             | \[optional] |
| **end\_date**                         | **str**                                                 |             | \[optional] |
| **expected\_balance**                 | **float**                                               |             | \[optional] |
| **balance**                           | **float**                                               |             | \[optional] |
| **bonus**                             | **float**                                               |             | \[optional] |
| **debt**                              | **float**                                               |             | \[optional] |
| **extended**                          | **bool**                                                |             | \[optional] |
| **maximum\_extended\_duration**       | **float**                                               |             | \[optional] |
| **maximum\_extended\_balance**        | **float**                                               |             | \[optional] |
| **extended\_balance\_include\_bonus** | **bool**                                                |             | \[optional] |
| **total\_balance**                    | **float**                                               |             | \[optional] |
| **used\_leave**                       | **float**                                               |             | \[optional] |
| **active**                            | **bool**                                                |             | \[optional] |
| **employee**                          | [**EmployeeSimpleResponse**](employeesimpleresponse.md) |             | \[optional] |
| **approved\_leave**                   | **float**                                               |             | \[optional] |
| **pending\_leave**                    | **float**                                               |             | \[optional] |
| **collective\_leave**                 | **float**                                               |             | \[optional] |
| **remaining**                         | **float**                                               |             | \[optional] |
| **extended\_date**                    | **str**                                                 |             | \[optional] |
| **extended\_balance**                 | **float**                                               |             | \[optional] |
| **extended\_used\_leave**             | **float**                                               |             | \[optional] |
| **extended\_collective\_leave**       | **float**                                               |             | \[optional] |
| **extended\_available**               | **float**                                               |             | \[optional] |
| **extended\_remaining**               | **float**                                               |             | \[optional] |
| **extended\_approved\_leave**         | **float**                                               |             | \[optional] |
| **extended\_pending\_leave**          | **float**                                               |             | \[optional] |

## Example

```python
from catapa import LeaveBalanceItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of LeaveBalanceItemResponse from a JSON string
leave_balance_item_response_instance = LeaveBalanceItemResponse.from_json(json)
# print the JSON string representation of the object
print(LeaveBalanceItemResponse.to_json())

# convert the object into a dict
leave_balance_item_response_dict = leave_balance_item_response_instance.to_dict()
# create an instance of LeaveBalanceItemResponse from a dict
leave_balance_item_response_from_dict = LeaveBalanceItemResponse.from_dict(leave_balance_item_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
