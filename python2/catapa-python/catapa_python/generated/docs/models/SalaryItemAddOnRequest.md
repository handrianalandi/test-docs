# SalaryItemAddOnRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **float** |  | 
**var_date** | **str** |  | 
**employee** | [**SalaryItemAddOnEmployeeRequest**](SalaryItemAddOnEmployeeRequest.md) |  | 
**salary_item** | [**SalaryItemAddOnSalaryItemRequest**](SalaryItemAddOnSalaryItemRequest.md) |  | 

## Example

```python
from catapa import SalaryItemAddOnRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryItemAddOnRequest from a JSON string
salary_item_add_on_request_instance = SalaryItemAddOnRequest.from_json(json)
# print the JSON string representation of the object
print(SalaryItemAddOnRequest.to_json())

# convert the object into a dict
salary_item_add_on_request_dict = salary_item_add_on_request_instance.to_dict()
# create an instance of SalaryItemAddOnRequest from a dict
salary_item_add_on_request_from_dict = SalaryItemAddOnRequest.from_dict(salary_item_add_on_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



