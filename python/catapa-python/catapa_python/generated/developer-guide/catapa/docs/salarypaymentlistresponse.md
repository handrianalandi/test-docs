# SalaryPaymentListResponse

## Properties

| Name                     | Type                                                          | Description | Notes       |
| ------------------------ | ------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                       |             | \[optional] |
| **last**                 | **bool**                                                      |             | \[optional] |
| **total\_elements**      | **int**                                                       |             | \[optional] |
| **number\_of\_elements** | **int**                                                       |             | \[optional] |
| **has\_content**         | **bool**                                                      |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                   |             | \[optional] |
| **first**                | **bool**                                                      |             | \[optional] |
| **size**                 | **int**                                                       |             | \[optional] |
| **number**               | **int**                                                       |             | \[optional] |
| **content**              | [**List\[SalaryPaymentResponse\]**](salarypaymentresponse.md) |             | \[optional] |

## Example

```python
from catapa import SalaryPaymentListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentListResponse from a JSON string
salary_payment_list_response_instance = SalaryPaymentListResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentListResponse.to_json())

# convert the object into a dict
salary_payment_list_response_dict = salary_payment_list_response_instance.to_dict()
# create an instance of SalaryPaymentListResponse from a dict
salary_payment_list_response_from_dict = SalaryPaymentListResponse.from_dict(salary_payment_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
