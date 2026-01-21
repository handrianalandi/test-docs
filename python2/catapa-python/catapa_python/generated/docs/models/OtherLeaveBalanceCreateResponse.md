# OtherLeaveBalanceCreateResponse


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

## Example

```python
from catapa import OtherLeaveBalanceCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OtherLeaveBalanceCreateResponse from a JSON string
other_leave_balance_create_response_instance = OtherLeaveBalanceCreateResponse.from_json(json)
# print the JSON string representation of the object
print(OtherLeaveBalanceCreateResponse.to_json())

# convert the object into a dict
other_leave_balance_create_response_dict = other_leave_balance_create_response_instance.to_dict()
# create an instance of OtherLeaveBalanceCreateResponse from a dict
other_leave_balance_create_response_from_dict = OtherLeaveBalanceCreateResponse.from_dict(other_leave_balance_create_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



