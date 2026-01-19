# ProcessedSalaryPaymentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_id** | **str** |  | [optional] 
**location_group_code** | **str** |  | [optional] 
**payment_date** | **str** |  | [optional] 
**salary_payment_details** | [**List[ProcessedSalaryPaymentDetailResponse]**](ProcessedSalaryPaymentDetailResponse.md) |  | [optional] 
**total_thp** | **float** |  | [optional] 

## Example

```python
from catapa import ProcessedSalaryPaymentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessedSalaryPaymentResponse from a JSON string
processed_salary_payment_response_instance = ProcessedSalaryPaymentResponse.from_json(json)
# print the JSON string representation of the object
print(ProcessedSalaryPaymentResponse.to_json())

# convert the object into a dict
processed_salary_payment_response_dict = processed_salary_payment_response_instance.to_dict()
# create an instance of ProcessedSalaryPaymentResponse from a dict
processed_salary_payment_response_from_dict = ProcessedSalaryPaymentResponse.from_dict(processed_salary_payment_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



