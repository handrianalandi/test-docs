# ProcessedSalaryPaymentDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **str** |  | [optional] 

## Example

```python
from catapa import ProcessedSalaryPaymentDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessedSalaryPaymentDetailResponse from a JSON string
processed_salary_payment_detail_response_instance = ProcessedSalaryPaymentDetailResponse.from_json(json)
# print the JSON string representation of the object
print(ProcessedSalaryPaymentDetailResponse.to_json())

# convert the object into a dict
processed_salary_payment_detail_response_dict = processed_salary_payment_detail_response_instance.to_dict()
# create an instance of ProcessedSalaryPaymentDetailResponse from a dict
processed_salary_payment_detail_response_from_dict = ProcessedSalaryPaymentDetailResponse.from_dict(processed_salary_payment_detail_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



