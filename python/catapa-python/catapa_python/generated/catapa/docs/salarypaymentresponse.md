# SalaryPaymentResponse

## Properties

| Name                         | Type                                                                              | Description | Notes       |
| ---------------------------- | --------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**                       | **str**                                                                           |             | \[optional] |
| **payment\_method**          | **str**                                                                           |             | \[optional] |
| **payment\_date**            | **str**                                                                           |             | \[optional] |
| **organization**             | [**PositionHistoryOrganizationResponse**](positionhistoryorganizationresponse.md) |             | \[optional] |
| **job\_level**               | [**NameResponse**](nameresponse.md)                                               |             | \[optional] |
| **job\_title**               | [**NameResponse**](nameresponse.md)                                               |             | \[optional] |
| **location**                 | [**NameResponse**](nameresponse.md)                                               |             | \[optional] |
| **cost\_center**             | [**CostCenterSimpleResponse**](costcentersimpleresponse.md)                       |             | \[optional] |
| **employee**                 | [**SalaryPaymentEmployeeResponse**](salarypaymentemployeeresponse.md)             |             | \[optional] |
| **salary\_payment\_details** | [**List\[SalaryPaymentDetailResponse\]**](salarypaymentdetailresponse.md)         |             | \[optional] |

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

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
