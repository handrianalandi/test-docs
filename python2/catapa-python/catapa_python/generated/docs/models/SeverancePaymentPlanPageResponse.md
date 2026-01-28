# SeverancePaymentPlanPageResponse


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
**content** | [**List[SeverancePaymentPlanResponse]**](SeverancePaymentPlanResponse.md) |  | 

## Example

```python
from catapa import SeverancePaymentPlanPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePaymentPlanPageResponse from a JSON string
severance_payment_plan_page_response_instance = SeverancePaymentPlanPageResponse.from_json(json)
# print the JSON string representation of the object
print(SeverancePaymentPlanPageResponse.to_json())

# convert the object into a dict
severance_payment_plan_page_response_dict = severance_payment_plan_page_response_instance.to_dict()
# create an instance of SeverancePaymentPlanPageResponse from a dict
severance_payment_plan_page_response_from_dict = SeverancePaymentPlanPageResponse.from_dict(severance_payment_plan_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



