# TaxReport1721VIDetailResponse

## Properties

| Name                       | Type                                                    | Description                        | Notes       |
| -------------------------- | ------------------------------------------------------- | ---------------------------------- | ----------- |
| **id**                     | **str**                                                 |                                    | \[optional] |
| **employee**               | [**EmployeeSimpleResponse**](employeesimpleresponse.md) |                                    | \[optional] |
| **kpp**                    | [**KppSimpleResponse**](kppsimpleresponse.md)           |                                    | \[optional] |
| **year**                   | **float**                                               | Tax report year                    | \[optional] |
| **month**                  | **float**                                               | Tax report month                   | \[optional] |
| **sequence\_number**       | **float**                                               | Report sequence number             | \[optional] |
| **npwp\_number**           | **str**                                                 | NPWP (Tax identification number)   | \[optional] |
| **monthly\_gross\_income** | **float**                                               | Monthly gross income amount        | \[optional] |
| **tax**                    | [**TaxCalculationResponse**](taxcalculationresponse.md) |                                    | \[optional] |
| **total\_gross\_income**   | **float**                                               | Total gross income amount          | \[optional] |
| **pkp**                    | **float**                                               | PKP (Penghasilan Kena Pajak) value | \[optional] |

## Example

```python
from catapa import TaxReport1721VIDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxReport1721VIDetailResponse from a JSON string
tax_report1721_vi_detail_response_instance = TaxReport1721VIDetailResponse.from_json(json)
# print the JSON string representation of the object
print(TaxReport1721VIDetailResponse.to_json())

# convert the object into a dict
tax_report1721_vi_detail_response_dict = tax_report1721_vi_detail_response_instance.to_dict()
# create an instance of TaxReport1721VIDetailResponse from a dict
tax_report1721_vi_detail_response_from_dict = TaxReport1721VIDetailResponse.from_dict(tax_report1721_vi_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
