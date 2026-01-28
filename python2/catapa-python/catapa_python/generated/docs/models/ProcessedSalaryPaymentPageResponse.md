# ProcessedSalaryPaymentPageResponse


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
**content** | [**List[ProcessedSalaryPaymentResponse]**](ProcessedSalaryPaymentResponse.md) |  | 

## Example

```python
from catapa import ProcessedSalaryPaymentPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessedSalaryPaymentPageResponse from a JSON string
processed_salary_payment_page_response_instance = ProcessedSalaryPaymentPageResponse.from_json(json)
# print the JSON string representation of the object
print(ProcessedSalaryPaymentPageResponse.to_json())

# convert the object into a dict
processed_salary_payment_page_response_dict = processed_salary_payment_page_response_instance.to_dict()
# create an instance of ProcessedSalaryPaymentPageResponse from a dict
processed_salary_payment_page_response_from_dict = ProcessedSalaryPaymentPageResponse.from_dict(processed_salary_payment_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



