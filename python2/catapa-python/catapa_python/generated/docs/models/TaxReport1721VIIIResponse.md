# TaxReport1721VIIIResponse

## Properties

| Name                   | Type                                                  | Description |
| :--------------------- | :---------------------------------------------------- | :---------- |
| `id`                   | `str`                                                 |             |
| `employee`             | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md) |             |
| `kpp`                  | [`KppSimpleResponse`](KppSimpleResponse.md)           |             |
| `year`                 | `float`                                               |             |
| `month`                | `float`                                               |             |
| `sequence_number`      | `float`                                               |             |
| `npwp_number`          | `str`                                                 |             |
| `address`              | `str`                                                 |             |
| `monthly_gross_income` | `float`                                               |             |
| `monthly_tax`          | [`TaxAmountResponse`](TaxAmountResponse.md)           |             |

## Usage Examples

### Creating an instance

```python
from catapa import TaxReport1721VIIIResponse

tax_report1721_viii_response = TaxReport1721VIIIResponse(
    id="''",
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    kpp=None,  # [KppSimpleResponse](KppSimpleResponse.md)
    year=1.337,
    month=1.337,
    sequence_number=1.337,
    npwp_number="''",
    address="''",
    monthly_gross_income=1.337,
    monthly_tax=None,  # [TaxAmountResponse](TaxAmountResponse.md)
)
```

### Working with JSON

```python
from catapa import TaxReport1721VIIIResponse

# Parse from JSON
json_str = '{"id": "example"}'
tax_report1721_viii_response = TaxReport1721VIIIResponse.from_json(json_str)

# Convert to JSON
print(tax_report1721_viii_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxReport1721VIIIResponse

# Convert to/from dictionary
data_dict = tax_report1721_viii_response.to_dict()
tax_report1721_viii_response = TaxReport1721VIIIResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_report1721_viii_response.id)
# Update properties
tax_report1721_viii_response.id = "new_value"
```
