# LeaveBalanceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification_number** | **str** |  | 
**year** | **float** |  | 
**accrual_frequency_type** | **str** |  | 
**monthly_accrual_include_bonus** | **bool** |  | 
**given_date** | **str** |  | 
**start_date** | **str** |  | 
**end_date** | **str** |  | 
**balance** | **float** |  | 
**bonus** | **float** |  | 
**debt** | **float** |  | 
**extended** | **bool** |  | 
**maximum_extended_duration** | **float** |  | 
**maximum_extended_balance** | **float** |  | 
**extended_balance_include_bonus** | **bool** |  | 

## Example

```python
from catapa import LeaveBalanceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of LeaveBalanceRequest from a JSON string
leave_balance_request_instance = LeaveBalanceRequest.from_json(json)
# print the JSON string representation of the object
print(LeaveBalanceRequest.to_json())

# convert the object into a dict
leave_balance_request_dict = leave_balance_request_instance.to_dict()
# create an instance of LeaveBalanceRequest from a dict
leave_balance_request_from_dict = LeaveBalanceRequest.from_dict(leave_balance_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



