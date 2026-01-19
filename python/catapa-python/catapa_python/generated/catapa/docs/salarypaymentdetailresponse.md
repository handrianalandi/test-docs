# SalaryPaymentDetailResponse

## Properties

| Name                        | Type                                                                                                  | Description | Notes       |
| --------------------------- | ----------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**                      | **str**                                                                                               |             | \[optional] |
| **bank\_code**              | **str**                                                                                               |             | \[optional] |
| **bank\_name**              | **str**                                                                                               |             | \[optional] |
| **account\_name**           | **str**                                                                                               |             | \[optional] |
| **account\_number**         | **str**                                                                                               |             | \[optional] |
| **bank\_account\_priority** | **int**                                                                                               |             | \[optional] |
| **currency\_code**          | **str**                                                                                               |             | \[optional] |
| **amount**                  | **float**                                                                                             |             | \[optional] |
| **exchanged\_amount**       | **float**                                                                                             |             | \[optional] |
| **company\_bank\_account**  | [**SalaryPaymentDetailCompanyBankAccountResponse**](salarypaymentdetailcompanybankaccountresponse.md) |             | \[optional] |

## Example

```python
from catapa import SalaryPaymentDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentDetailResponse from a JSON string
salary_payment_detail_response_instance = SalaryPaymentDetailResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentDetailResponse.to_json())

# convert the object into a dict
salary_payment_detail_response_dict = salary_payment_detail_response_instance.to_dict()
# create an instance of SalaryPaymentDetailResponse from a dict
salary_payment_detail_response_from_dict = SalaryPaymentDetailResponse.from_dict(salary_payment_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
