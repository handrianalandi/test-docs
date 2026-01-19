# SalaryPaymentEmploymentStatusResponse

## Properties

| Name                 | Type                                                        | Description | Notes       |
| -------------------- | ----------------------------------------------------------- | ----------- | ----------- |
| **job\_title**       | [**NameResponse**](nameresponse.md)                         |             | \[optional] |
| **employment\_type** | [**NameResponse**](nameresponse.md)                         |             | \[optional] |
| **cost\_center**     | [**CostCenterSimpleResponse**](costcentersimpleresponse.md) |             | \[optional] |

## Example

```python
from catapa import SalaryPaymentEmploymentStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentEmploymentStatusResponse from a JSON string
salary_payment_employment_status_response_instance = SalaryPaymentEmploymentStatusResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentEmploymentStatusResponse.to_json())

# convert the object into a dict
salary_payment_employment_status_response_dict = salary_payment_employment_status_response_instance.to_dict()
# create an instance of SalaryPaymentEmploymentStatusResponse from a dict
salary_payment_employment_status_response_from_dict = SalaryPaymentEmploymentStatusResponse.from_dict(salary_payment_employment_status_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
