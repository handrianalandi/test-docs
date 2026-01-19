# TaxReport1721A1Response

## Properties

| Name                             | Type                                                    | Description | Notes       |
| -------------------------------- | ------------------------------------------------------- | ----------- | ----------- |
| **id**                           | **str**                                                 |             | \[optional] |
| **employee**                     | [**EmployeeSimpleResponse**](employeesimpleresponse.md) |             | \[optional] |
| **kpp**                          | [**KppSimpleResponse**](kppsimpleresponse.md)           |             | \[optional] |
| **external\_id**                 | **str**                                                 |             | \[optional] |
| **year**                         | **float**                                               |             | \[optional] |
| **end\_month**                   | **float**                                               |             | \[optional] |
| **sequence\_number**             | **float**                                               |             | \[optional] |
| **membership\_number**           | **str**                                                 |             | \[optional] |
| **ptkp**                         | **float**                                               |             | \[optional] |
| **job\_title**                   | **str**                                                 |             | \[optional] |
| **total\_gross\_income**         | **float**                                               |             | \[optional] |
| **outstanding\_original\_tax**   | **float**                                               |             | \[optional] |
| **outstanding\_penalty\_tax**    | **float**                                               |             | \[optional] |
| **outstanding\_tax**             | **float**                                               |             | \[optional] |
| **paid\_original\_tax**          | **float**                                               |             | \[optional] |
| **paid\_penalty\_tax**           | **float**                                               |             | \[optional] |
| **paid\_tax**                    | **float**                                               |             | \[optional] |
| **paid\_tax\_allowance**         | **float**                                               |             | \[optional] |
| **basic\_salary**                | **float**                                               |             | \[optional] |
| **tax\_allowance**               | **float**                                               |             | \[optional] |
| **other\_allowance**             | **float**                                               |             | \[optional] |
| **honorarium**                   | **float**                                               |             | \[optional] |
| **insurance\_premium**           | **float**                                               |             | \[optional] |
| **enjoyment\_revenue**           | **float**                                               |             | \[optional] |
| **bonus**                        | **float**                                               |             | \[optional] |
| **retirement\_contribution**     | **float**                                               |             | \[optional] |
| **total\_deduction**             | **float**                                               |             | \[optional] |
| **net\_income**                  | **float**                                               |             | \[optional] |
| **previous\_net\_income**        | **float**                                               |             | \[optional] |
| **total\_net\_income**           | **float**                                               |             | \[optional] |
| **base\_income\_tax\_deduction** | **float**                                               |             | \[optional] |
| **base\_income\_tax**            | **float**                                               |             | \[optional] |
| **yearly\_original\_tax**        | **float**                                               |             | \[optional] |
| **yearly\_penalty\_tax**         | **float**                                               |             | \[optional] |
| **yearly\_tax**                  | **float**                                               |             | \[optional] |
| **previous\_original\_tax**      | **float**                                               |             | \[optional] |
| **previous\_penalty\_tax**       | **float**                                               |             | \[optional] |
| **previous\_tax**                | **float**                                               |             | \[optional] |

## Example

```python
from catapa import TaxReport1721A1Response

# TODO update the JSON string below
json = "{}"
# create an instance of TaxReport1721A1Response from a JSON string
tax_report1721_a1_response_instance = TaxReport1721A1Response.from_json(json)
# print the JSON string representation of the object
print(TaxReport1721A1Response.to_json())

# convert the object into a dict
tax_report1721_a1_response_dict = tax_report1721_a1_response_instance.to_dict()
# create an instance of TaxReport1721A1Response from a dict
tax_report1721_a1_response_from_dict = TaxReport1721A1Response.from_dict(tax_report1721_a1_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
