# SalaryPaymentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**payment_method** | **str** |  | 
**payment_date** | **str** |  | 
**organization** | [**PositionHistoryOrganizationResponse**](PositionHistoryOrganizationResponse.md) |  | 
**job_level** | [**NameResponse**](NameResponse.md) |  | 
**job_title** | [**NameResponse**](NameResponse.md) |  | 
**location** | [**NameResponse**](NameResponse.md) |  | 
**cost_center** | [**CostCenterSimpleResponse**](CostCenterSimpleResponse.md) |  | 
**employee** | [**SalaryPaymentEmployeeResponse**](SalaryPaymentEmployeeResponse.md) |  | 
**salary_payment_details** | [**List[SalaryPaymentDetailResponse]**](SalaryPaymentDetailResponse.md) |  | 

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



