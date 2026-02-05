# MonthlyTaxReportResponse

## Properties

| Name                         | Type                                                    | Description |
| :--------------------------- | :------------------------------------------------------ | :---------- |
| `id`                         | `str`                                                   |             |
| `year`                       | `float`                                                 |             |
| `month`                      | `float`                                                 |             |
| `pph21_method`               | `str`                                                   |             |
| `membership_number`          | `str`                                                   |             |
| `membership_address`         | `str`                                                   |             |
| `total_monthly_gross_income` | `float`                                                 |             |
| `total_tax_and_allowance`    | [`TaxAndAllowanceResponse`](TaxAndAllowanceResponse.md) |             |
| `paid_tax_and_allowance`     | [`TaxAndAllowanceResponse`](TaxAndAllowanceResponse.md) |             |
| `tax_object`                 | `str`                                                   |             |
| `sequence_number`            | `float`                                                 |             |
| `migrated`                   | `bool`                                                  |             |
| `employee`                   | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)   |             |
| `kpp`                        | [`KppSimpleResponse`](KppSimpleResponse.md)             |             |

## Usage Examples

### Creating an instance

```python
from catapa import MonthlyTaxReportResponse

monthly_tax_report_response = MonthlyTaxReportResponse(
    id="''",
    year=1.337,
    month=1.337,
    pph21_method="''",
    membership_number="''",
    membership_address="''",
    total_monthly_gross_income=1.337,
    total_tax_and_allowance=None,  # [TaxAndAllowanceResponse](TaxAndAllowanceResponse.md)
    paid_tax_and_allowance=None,  # [TaxAndAllowanceResponse](TaxAndAllowanceResponse.md)
    tax_object="'PERMANENT'",
    sequence_number=1.337,
    migrated=True,
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    kpp=None,  # [KppSimpleResponse](KppSimpleResponse.md)
)
```

### Working with JSON

```python
from catapa import MonthlyTaxReportResponse

# Parse from JSON
json_str = '{"id": "example"}'
monthly_tax_report_response = MonthlyTaxReportResponse.from_json(json_str)

# Convert to JSON
print(monthly_tax_report_response.to_json())
```

### Working with dictionaries

```python
from catapa import MonthlyTaxReportResponse

# Convert to/from dictionary
data_dict = monthly_tax_report_response.to_dict()
monthly_tax_report_response = MonthlyTaxReportResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(monthly_tax_report_response.id)
# Update properties
monthly_tax_report_response.id = "new_value"
```
