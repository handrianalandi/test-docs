# MonthlyTaxReportResponse

## Properties

| Name                              | Type                                                      | Description | Notes       |
| --------------------------------- | --------------------------------------------------------- | ----------- | ----------- |
| **id**                            | **str**                                                   |             | \[optional] |
| **year**                          | **float**                                                 |             | \[optional] |
| **month**                         | **float**                                                 |             | \[optional] |
| **pph21\_method**                 | **str**                                                   |             | \[optional] |
| **membership\_number**            | **str**                                                   |             | \[optional] |
| **membership\_address**           | **str**                                                   |             | \[optional] |
| **total\_monthly\_gross\_income** | **float**                                                 |             | \[optional] |
| **total\_tax\_and\_allowance**    | [**TaxAndAllowanceResponse**](taxandallowanceresponse.md) |             | \[optional] |
| **paid\_tax\_and\_allowance**     | [**TaxAndAllowanceResponse**](taxandallowanceresponse.md) |             | \[optional] |
| **tax\_object**                   | **str**                                                   |             | \[optional] |
| **sequence\_number**              | **float**                                                 |             | \[optional] |
| **migrated**                      | **bool**                                                  |             | \[optional] |
| **employee**                      | [**EmployeeSimpleResponse**](employeesimpleresponse.md)   |             | \[optional] |
| **kpp**                           | [**KppSimpleResponse**](kppsimpleresponse.md)             |             | \[optional] |

## Example

```python
from catapa import MonthlyTaxReportResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyTaxReportResponse from a JSON string
monthly_tax_report_response_instance = MonthlyTaxReportResponse.from_json(json)
# print the JSON string representation of the object
print(MonthlyTaxReportResponse.to_json())

# convert the object into a dict
monthly_tax_report_response_dict = monthly_tax_report_response_instance.to_dict()
# create an instance of MonthlyTaxReportResponse from a dict
monthly_tax_report_response_from_dict = MonthlyTaxReportResponse.from_dict(monthly_tax_report_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
