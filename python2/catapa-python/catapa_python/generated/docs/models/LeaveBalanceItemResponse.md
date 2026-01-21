# LeaveBalanceItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**year** | **float** |  | [optional] 
**accrual_frequency_type** | **str** |  | [optional] 
**monthly_accrual_include_bonus** | **bool** |  | [optional] 
**given_date** | **str** |  | [optional] 
**start_date** | **str** |  | [optional] 
**end_date** | **str** |  | [optional] 
**expected_balance** | **float** |  | [optional] 
**balance** | **float** |  | [optional] 
**bonus** | **float** |  | [optional] 
**debt** | **float** |  | [optional] 
**extended** | **bool** |  | [optional] 
**maximum_extended_duration** | **float** |  | [optional] 
**maximum_extended_balance** | **float** |  | [optional] 
**extended_balance_include_bonus** | **bool** |  | [optional] 
**total_balance** | **float** |  | [optional] 
**used_leave** | **float** |  | [optional] 
**active** | **bool** |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**approved_leave** | **float** |  | [optional] 
**pending_leave** | **float** |  | [optional] 
**collective_leave** | **float** |  | [optional] 
**remaining** | **float** |  | [optional] 
**extended_date** | **str** |  | [optional] 
**extended_balance** | **float** |  | [optional] 
**extended_used_leave** | **float** |  | [optional] 
**extended_collective_leave** | **float** |  | [optional] 
**extended_available** | **float** |  | [optional] 
**extended_remaining** | **float** |  | [optional] 
**extended_approved_leave** | **float** |  | [optional] 
**extended_pending_leave** | **float** |  | [optional] 

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



