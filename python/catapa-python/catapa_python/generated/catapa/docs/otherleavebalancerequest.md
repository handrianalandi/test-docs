# OtherLeaveBalanceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification_number** | **str** |  | 
**other_leave_status_code** | **str** |  | 
**year** | **float** |  | 
**balance** | **float** |  | 
**given_date** | **str** |  | 
**start_date** | **str** |  | 
**end_date** | **str** |  | 

## Example

```python
from catapa import OtherLeaveBalanceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of OtherLeaveBalanceRequest from a JSON string
other_leave_balance_request_instance = OtherLeaveBalanceRequest.from_json(json)
# print the JSON string representation of the object
print(OtherLeaveBalanceRequest.to_json())

# convert the object into a dict
other_leave_balance_request_dict = other_leave_balance_request_instance.to_dict()
# create an instance of OtherLeaveBalanceRequest from a dict
other_leave_balance_request_from_dict = OtherLeaveBalanceRequest.from_dict(other_leave_balance_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



