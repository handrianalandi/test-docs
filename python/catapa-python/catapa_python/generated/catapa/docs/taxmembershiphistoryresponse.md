# TaxMembershipHistoryResponse

## Properties

| Name                          | Type                                                              | Description                                                | Notes       |
| ----------------------------- | ----------------------------------------------------------------- | ---------------------------------------------------------- | ----------- |
| **id**                        | **str**                                                           | Unique identifier for the tax membership                   |             |
| **foreign\_tax\_object**      | **bool**                                                          | Whether this is a foreign tax object                       |             |
| **kpp\_id**                   | **str**                                                           | Tax office (KPP) identifier                                |             |
| **link\_to\_payroll**         | **bool**                                                          | Whether this tax membership is linked to payroll           |             |
| **membership\_end\_period**   | [**TaxMembershipPeriodResponse**](taxmembershipperiodresponse.md) |                                                            |             |
| **membership\_start\_period** | [**TaxMembershipPeriodResponse**](taxmembershipperiodresponse.md) |                                                            |             |
| **effective\_end\_period**    | [**TaxMembershipPeriodResponse**](taxmembershipperiodresponse.md) |                                                            | \[optional] |
| **effective\_start\_period**  | [**TaxMembershipPeriodResponse**](taxmembershipperiodresponse.md) |                                                            | \[optional] |
| **method**                    | **str**                                                           | PPh21 calculation method                                   |             |
| **more\_than\_one\_employer** | **bool**                                                          | Whether employee has more than one employer                |             |
| **npwp\_address**             | **str**                                                           | Address registered with NPWP                               |             |
| **npwp\_number**              | **str**                                                           | NPWP (Tax ID) number - can be empty or contain only digits |             |
| **tin**                       | **str**                                                           | Tax Identification Number                                  | \[optional] |
| **previous\_net\_income**     | **float**                                                         | Previous net income amount                                 |             |
| **previous\_paid\_pph**       | **float**                                                         | Previous paid PPh amount                                   |             |
| **ptkp\_category\_id**        | **str**                                                           | PTKP (Personal Tax Free Income) category identifier        |             |
| **tax\_object**               | **str**                                                           | Type of tax object for the employee                        |             |
| **use\_recommended\_period**  | **bool**                                                          |                                                            | \[optional] |
| **tax\_dependents**           | [**List\[TaxDependentResponse\]**](taxdependentresponse.md)       | List of tax dependents for PTKP calculation                | \[optional] |
| **employee**                  | [**EmployeeSimpleResponse**](employeesimpleresponse.md)           |                                                            | \[optional] |

## Example

```python
from catapa import TaxMembershipHistoryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxMembershipHistoryResponse from a JSON string
tax_membership_history_response_instance = TaxMembershipHistoryResponse.from_json(json)
# print the JSON string representation of the object
print(TaxMembershipHistoryResponse.to_json())

# convert the object into a dict
tax_membership_history_response_dict = tax_membership_history_response_instance.to_dict()
# create an instance of TaxMembershipHistoryResponse from a dict
tax_membership_history_response_from_dict = TaxMembershipHistoryResponse.from_dict(tax_membership_history_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
