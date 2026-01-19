# TaxCalculationDetailResponse

## Properties

| Name                              | Type                                                      | Description | Notes       |
| --------------------------------- | --------------------------------------------------------- | ----------- | ----------- |
| **id**                            | **UUID**                                                  |             | \[optional] |
| **created\_by**                   | **str**                                                   |             | \[optional] |
| **created\_date**                 | **float**                                                 |             | \[optional] |
| **updated\_by**                   | **str**                                                   |             | \[optional] |
| **updated\_date**                 | **float**                                                 |             | \[optional] |
| **employee**                      | [**EmployeeSimpleResponse**](employeesimpleresponse.md)   |             | \[optional] |
| **kpp**                           | [**KppSimpleResponse**](kppsimpleresponse.md)             |             | \[optional] |
| **external\_id**                  | **str**                                                   |             | \[optional] |
| **year**                          | **float**                                                 |             | \[optional] |
| **month**                         | **float**                                                 |             | \[optional] |
| **pph21\_method**                 | **str**                                                   |             | \[optional] |
| **membership\_number**            | **str**                                                   |             | \[optional] |
| **membership\_address**           | **str**                                                   |             | \[optional] |
| **total\_monthly\_gross\_income** | **float**                                                 |             | \[optional] |
| **total\_tax\_and\_allowance**    | [**TaxAndAllowanceResponse**](taxandallowanceresponse.md) |             | \[optional] |
| **paid\_tax\_and\_allowance**     | [**TaxAndAllowanceResponse**](taxandallowanceresponse.md) |             | \[optional] |
| **type**                          | **str**                                                   |             | \[optional] |
| **tax\_object**                   | **str**                                                   |             | \[optional] |
| **reference\_year**               | **float**                                                 |             | \[optional] |
| **reference\_month**              | **float**                                                 |             | \[optional] |
| **multiplier**                    | **float**                                                 |             | \[optional] |
| **calculation\_type**             | **str**                                                   |             | \[optional] |
| **payment\_method**               | **str**                                                   |             | \[optional] |
| **reference\_date**               | **date**                                                  |             | \[optional] |
| **payment\_date**                 | **date**                                                  |             | \[optional] |

## Example

```python
from catapa import TaxCalculationDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxCalculationDetailResponse from a JSON string
tax_calculation_detail_response_instance = TaxCalculationDetailResponse.from_json(json)
# print the JSON string representation of the object
print(TaxCalculationDetailResponse.to_json())

# convert the object into a dict
tax_calculation_detail_response_dict = tax_calculation_detail_response_instance.to_dict()
# create an instance of TaxCalculationDetailResponse from a dict
tax_calculation_detail_response_from_dict = TaxCalculationDetailResponse.from_dict(tax_calculation_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
