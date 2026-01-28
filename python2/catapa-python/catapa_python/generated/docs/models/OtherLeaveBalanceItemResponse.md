# OtherLeaveBalanceItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | 
**other_leave_status** | [**OtherLeaveStatusResponse**](OtherLeaveStatusResponse.md) |  | 
**year** | **float** |  | 
**given_date** | **str** |  | 
**start_date** | **str** |  | 
**end_date** | **str** |  | 
**balance** | **float** |  | 
**used_balance** | **float** |  | 
**pending_balance** | **float** |  | 
**approved_balance** | **float** |  | 
**remaining** | **float** |  | 
**min_leave_date** | **str** |  | 
**max_leave_date** | **str** |  | 
**active** | **bool** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



