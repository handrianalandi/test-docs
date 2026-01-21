# OtherLeaveBalanceItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**other_leave_status** | [**OtherLeaveStatusResponse**](OtherLeaveStatusResponse.md) |  | [optional] 
**year** | **float** |  | [optional] 
**given_date** | **str** |  | [optional] 
**start_date** | **str** |  | [optional] 
**end_date** | **str** |  | [optional] 
**balance** | **float** |  | [optional] 
**used_balance** | **float** |  | [optional] 
**pending_balance** | **float** |  | [optional] 
**approved_balance** | **float** |  | [optional] 
**remaining** | **float** |  | [optional] 
**min_leave_date** | **str** |  | [optional] 
**max_leave_date** | **str** |  | [optional] 
**active** | **bool** |  | [optional] 

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
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



