# SalaryPaymentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**payment_method** | **str** |  | [optional] 
**payment_date** | **str** |  | [optional] 
**organization** | [**PositionHistoryOrganizationResponse**](PositionHistoryOrganizationResponse.md) |  | [optional] 
**job_level** | [**NameResponse**](NameResponse.md) |  | [optional] 
**job_title** | [**NameResponse**](NameResponse.md) |  | [optional] 
**location** | [**NameResponse**](NameResponse.md) |  | [optional] 
**cost_center** | [**CostCenterSimpleResponse**](CostCenterSimpleResponse.md) |  | [optional] 
**employee** | [**SalaryPaymentEmployeeResponse**](SalaryPaymentEmployeeResponse.md) |  | [optional] 
**salary_payment_details** | [**List[SalaryPaymentDetailResponse]**](SalaryPaymentDetailResponse.md) |  | [optional] 

## Example

```python
from catapa import SalaryPaymentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentResponse from a JSON string
salary_payment_response_instance = SalaryPaymentResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentResponse.to_json())

# convert the object into a dict
salary_payment_response_dict = salary_payment_response_instance.to_dict()
# create an instance of SalaryPaymentResponse from a dict
salary_payment_response_from_dict = SalaryPaymentResponse.from_dict(salary_payment_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



