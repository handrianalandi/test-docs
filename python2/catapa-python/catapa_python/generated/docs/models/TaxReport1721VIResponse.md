# TaxReport1721VIResponse

## Properties

| Name                   | Type                                                  | Description                      |
| :--------------------- | :---------------------------------------------------- | :------------------------------- |
| `id`                   | `str`                                                 |                                  |
| `employee`             | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md) |                                  |
| `kpp`                  | [`KppSimpleResponse`](KppSimpleResponse.md)           |                                  |
| `year`                 | `float`                                               | Tax report year                  |
| `month`                | `float`                                               | Tax report month                 |
| `sequence_number`      | `float`                                               | Report sequence number           |
| `npwp_number`          | `str`                                                 | NPWP (Tax identification number) |
| `monthly_gross_income` | `float`                                               | Monthly gross income amount      |
| `tax`                  | [`TaxCalculationResponse`](TaxCalculationResponse.md) |                                  |

## Usage Examples

### Creating an instance

```python
from catapa import TaxReport1721VIResponse

tax_report1721_vi_response = TaxReport1721VIResponse(
    id="''",
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    kpp=None,  # [KppSimpleResponse](KppSimpleResponse.md)
    year=1.337,
    month=1.337,
    sequence_number=1.337,
    npwp_number="''",
    monthly_gross_income=1.337,
    tax=None,  # [TaxCalculationResponse](TaxCalculationResponse.md)
)
```

### Working with JSON

```python
from catapa import TaxReport1721VIResponse

# Parse from JSON
json_str = '{"id": "example"}'
tax_report1721_vi_response = TaxReport1721VIResponse.from_json(json_str)

# Convert to JSON
print(tax_report1721_vi_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxReport1721VIResponse

# Convert to/from dictionary
data_dict = tax_report1721_vi_response.to_dict()
tax_report1721_vi_response = TaxReport1721VIResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_report1721_vi_response.id)
# Update properties
tax_report1721_vi_response.id = "new_value"
```
