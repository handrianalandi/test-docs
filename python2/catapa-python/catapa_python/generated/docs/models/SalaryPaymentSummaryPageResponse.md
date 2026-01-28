# SalaryPaymentSummaryPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[SalaryPaymentSummaryResponse]**](SalaryPaymentSummaryResponse.md) |  | 

## Example

```python
from catapa import SalaryPaymentSummaryPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentSummaryPageResponse from a JSON string
salary_payment_summary_page_response_instance = SalaryPaymentSummaryPageResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentSummaryPageResponse.to_json())

# convert the object into a dict
salary_payment_summary_page_response_dict = salary_payment_summary_page_response_instance.to_dict()
# create an instance of SalaryPaymentSummaryPageResponse from a dict
salary_payment_summary_page_response_from_dict = SalaryPaymentSummaryPageResponse.from_dict(salary_payment_summary_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



