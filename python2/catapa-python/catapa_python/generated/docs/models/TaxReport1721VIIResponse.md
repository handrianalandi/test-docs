# TaxReport1721VIIResponse

## Properties

| Name              | Type                                                  | Description                      |
| :---------------- | :---------------------------------------------------- | :------------------------------- |
| `id`              | `str`                                                 |                                  |
| `employee`        | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md) |                                  |
| `kpp`             | [`KppSimpleResponse`](KppSimpleResponse.md)           |                                  |
| `year`            | `float`                                               | Tax report year                  |
| `month`           | `float`                                               | Tax report month                 |
| `sequence_number` | `float`                                               | Report sequence number           |
| `npwp_number`     | `str`                                                 | NPWP (Tax identification number) |
| `income`          | `float`                                               | Total income amount              |
| `tax`             | `float`                                               | Tax amount                       |

## Usage Examples

### Creating an instance

```python
from catapa import TaxReport1721VIIResponse

tax_report1721_vii_response = TaxReport1721VIIResponse(
    id="''",
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    kpp=None,  # [KppSimpleResponse](KppSimpleResponse.md)
    year=1.337,
    month=1.337,
    sequence_number=1.337,
    npwp_number="''",
    income=1.337,
    tax=1.337,
)
```

### Working with JSON

```python
from catapa import TaxReport1721VIIResponse

# Parse from JSON
json_str = '{"id": "example"}'
tax_report1721_vii_response = TaxReport1721VIIResponse.from_json(json_str)

# Convert to JSON
print(tax_report1721_vii_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxReport1721VIIResponse

# Convert to/from dictionary
data_dict = tax_report1721_vii_response.to_dict()
tax_report1721_vii_response = TaxReport1721VIIResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_report1721_vii_response.id)
# Update properties
tax_report1721_vii_response.id = "new_value"
```
