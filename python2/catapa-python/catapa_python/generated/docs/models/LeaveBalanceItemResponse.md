# LeaveBalanceItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**year** | **float** |  | 
**accrual_frequency_type** | **str** |  | 
**monthly_accrual_include_bonus** | **bool** |  | 
**given_date** | **str** |  | 
**start_date** | **str** |  | 
**end_date** | **str** |  | 
**expected_balance** | **float** |  | 
**balance** | **float** |  | 
**bonus** | **float** |  | 
**debt** | **float** |  | 
**extended** | **bool** |  | 
**maximum_extended_duration** | **float** |  | 
**maximum_extended_balance** | **float** |  | 
**extended_balance_include_bonus** | **bool** |  | 
**total_balance** | **float** |  | 
**used_leave** | **float** |  | 
**active** | **bool** |  | 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | 
**approved_leave** | **float** |  | 
**pending_leave** | **float** |  | 
**collective_leave** | **float** |  | 
**remaining** | **float** |  | 
**extended_date** | **str** |  | 
**extended_balance** | **float** |  | 
**extended_used_leave** | **float** |  | 
**extended_collective_leave** | **float** |  | 
**extended_available** | **float** |  | 
**extended_remaining** | **float** |  | 
**extended_approved_leave** | **float** |  | 
**extended_pending_leave** | **float** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



