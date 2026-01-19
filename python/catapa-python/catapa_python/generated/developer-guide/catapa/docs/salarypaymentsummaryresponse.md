# SalaryPaymentSummaryResponse

## Properties

| Name                                   | Type                                                                                                    | Description | Notes       |
| -------------------------------------- | ------------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **account\_number**                    | **str**                                                                                                 |             | \[optional] |
| **amount**                             | **float**                                                                                               |             | \[optional] |
| **id**                                 | **str**                                                                                                 |             | \[optional] |
| **number\_of\_processed\_employees**   | **float**                                                                                               |             | \[optional] |
| **number\_of\_transferred\_employees** | **float**                                                                                               |             | \[optional] |
| **payment\_date**                      | **str**                                                                                                 |             | \[optional] |
| **transferred\_amount**                | **float**                                                                                               |             | \[optional] |
| **company\_bank\_account**             | [**SalaryPaymentSummaryCompanyBankAccountResponse**](salarypaymentsummarycompanybankaccountresponse.md) |             | \[optional] |

## Example

```python
from catapa import SalaryPaymentSummaryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentSummaryResponse from a JSON string
salary_payment_summary_response_instance = SalaryPaymentSummaryResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentSummaryResponse.to_json())

# convert the object into a dict
salary_payment_summary_response_dict = salary_payment_summary_response_instance.to_dict()
# create an instance of SalaryPaymentSummaryResponse from a dict
salary_payment_summary_response_from_dict = SalaryPaymentSummaryResponse.from_dict(salary_payment_summary_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
