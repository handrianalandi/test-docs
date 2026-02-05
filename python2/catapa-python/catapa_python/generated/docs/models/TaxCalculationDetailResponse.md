# TaxCalculationDetailResponse

## Properties

| Name                         | Type                                                    | Description |
| :--------------------------- | :------------------------------------------------------ | :---------- |
| `id`                         | `UUID`                                                  |             |
| `created_by`                 | `str`                                                   |             |
| `created_date`               | `float`                                                 |             |
| `updated_by`                 | `str`                                                   |             |
| `updated_date`               | `float`                                                 |             |
| `employee`                   | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)   |             |
| `kpp`                        | [`KppSimpleResponse`](KppSimpleResponse.md)             |             |
| `external_id`                | `str`                                                   |             |
| `year`                       | `float`                                                 |             |
| `month`                      | `float`                                                 |             |
| `pph21_method`               | `str`                                                   |             |
| `membership_number`          | `str`                                                   |             |
| `membership_address`         | `str`                                                   |             |
| `total_monthly_gross_income` | `float`                                                 |             |
| `total_tax_and_allowance`    | [`TaxAndAllowanceResponse`](TaxAndAllowanceResponse.md) |             |
| `paid_tax_and_allowance`     | [`TaxAndAllowanceResponse`](TaxAndAllowanceResponse.md) |             |
| `type`                       | `str`                                                   |             |
| `tax_object`                 | `str`                                                   |             |
| `reference_year`             | `float`                                                 |             |
| `reference_month`            | `float`                                                 |             |
| `multiplier`                 | `float`                                                 |             |
| `calculation_type`           | `str`                                                   |             |
| `payment_method`             | `str`                                                   |             |
| `reference_date`             | `date`                                                  |             |
| `payment_date`               | `date`                                                  |             |

## Usage Examples

### Creating an instance

```python
from catapa import TaxCalculationDetailResponse

tax_calculation_detail_response = TaxCalculationDetailResponse(
    id="''",
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    kpp=None,  # [KppSimpleResponse](KppSimpleResponse.md)
    external_id="''",
    year=1.337,
    month=1.337,
    pph21_method="''",
    membership_number="''",
    membership_address="''",
    total_monthly_gross_income=1.337,
    total_tax_and_allowance=None,  # [TaxAndAllowanceResponse](TaxAndAllowanceResponse.md)
    paid_tax_and_allowance=None,  # [TaxAndAllowanceResponse](TaxAndAllowanceResponse.md)
    type="''",
    tax_object="'PERMANENT'",
    reference_year=1.337,
    reference_month=1.337,
    multiplier=1.337,
    calculation_type="''",
    payment_method="''",
    reference_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    payment_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
)
```

### Working with JSON

```python
from catapa import TaxCalculationDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
tax_calculation_detail_response = TaxCalculationDetailResponse.from_json(json_str)

# Convert to JSON
print(tax_calculation_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxCalculationDetailResponse

# Convert to/from dictionary
data_dict = tax_calculation_detail_response.to_dict()
tax_calculation_detail_response = TaxCalculationDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_calculation_detail_response.id)
# Update properties
tax_calculation_detail_response.id = "new_value"
```
