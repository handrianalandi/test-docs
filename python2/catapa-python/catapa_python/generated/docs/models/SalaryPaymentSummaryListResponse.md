# SalaryPaymentSummaryListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[SalaryPaymentSummaryResponse]**](SalaryPaymentSummaryResponse.md) |  | [optional] 

## Example

```python
from catapa import SalaryPaymentSummaryListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentSummaryListResponse from a JSON string
salary_payment_summary_list_response_instance = SalaryPaymentSummaryListResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentSummaryListResponse.to_json())

# convert the object into a dict
salary_payment_summary_list_response_dict = salary_payment_summary_list_response_instance.to_dict()
# create an instance of SalaryPaymentSummaryListResponse from a dict
salary_payment_summary_list_response_from_dict = SalaryPaymentSummaryListResponse.from_dict(salary_payment_summary_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



