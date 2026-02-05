# MonthlyTaxDetailResponse

## Properties

| Name                        | Type                                        | Description |
| :-------------------------- | :------------------------------------------ | :---------- |
| `annual_calculation`        | `bool`                                      |             |
| `tax_object`                | `str`                                       |             |
| `year`                      | `int`                                       |             |
| `month`                     | `int`                                       |             |
| `employee_id`               | `str`                                       |             |
| `npwp_number`               | `str`                                       |             |
| `npwp_address`              | `str`                                       |             |
| `ptkp_category_code`        | `str`                                       |             |
| `ter_category`              | `str`                                       |             |
| `percentage`                | `float`                                     |             |
| `monthly_gross_income`      | `float`                                     |             |
| `tax`                       | [`TaxAmountResponse`](TaxAmountResponse.md) |             |
| `regular_tax`               | [`TaxAmountResponse`](TaxAmountResponse.md) |             |
| `bonus_tax`                 | [`TaxAmountResponse`](TaxAmountResponse.md) |             |
| `income`                    | [`TaxIncomeResponse`](TaxIncomeResponse.md) |             |
| `positional_allowance`      | `float`                                     |             |
| `base_income_tax_deduction` | `float`                                     |             |

## Usage Examples

### Creating an instance

```python
from catapa import MonthlyTaxDetailResponse

monthly_tax_detail_response = MonthlyTaxDetailResponse(
    annual_calculation=True,
    tax_object="'PERMANENT'",
    year=56,
    month=56,
    employee_id="''",
    npwp_number="''",
    npwp_address="''",
    ptkp_category_code="''",
    ter_category="''",
    percentage=1.337,
    monthly_gross_income=1.337,
    tax=None,  # [TaxAmountResponse](TaxAmountResponse.md)
    regular_tax=None,  # [TaxAmountResponse](TaxAmountResponse.md)
    bonus_tax=None,  # [TaxAmountResponse](TaxAmountResponse.md)
    income=None,  # [TaxIncomeResponse](TaxIncomeResponse.md)
    positional_allowance=1.337,
    base_income_tax_deduction=1.337,
)
```

### Working with JSON

```python
from catapa import MonthlyTaxDetailResponse

# Parse from JSON
json_str = '{"annual_calculation": "example"}'
monthly_tax_detail_response = MonthlyTaxDetailResponse.from_json(json_str)

# Convert to JSON
print(monthly_tax_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import MonthlyTaxDetailResponse

# Convert to/from dictionary
data_dict = monthly_tax_detail_response.to_dict()
monthly_tax_detail_response = MonthlyTaxDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(monthly_tax_detail_response.annual_calculation)
# Update properties
monthly_tax_detail_response.annual_calculation = new_value
```
