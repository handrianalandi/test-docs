# TaxReport1721A1Response

## Properties

| Name                        | Type                                                  | Description |
| :-------------------------- | :---------------------------------------------------- | :---------- |
| `id`                        | `str`                                                 |             |
| `employee`                  | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md) |             |
| `kpp`                       | [`KppSimpleResponse`](KppSimpleResponse.md)           |             |
| `external_id`               | `str`                                                 |             |
| `year`                      | `float`                                               |             |
| `end_month`                 | `float`                                               |             |
| `sequence_number`           | `float`                                               |             |
| `membership_number`         | `str`                                                 |             |
| `ptkp`                      | `float`                                               |             |
| `job_title`                 | `str`                                                 |             |
| `total_gross_income`        | `float`                                               |             |
| `outstanding_original_tax`  | `float`                                               |             |
| `outstanding_penalty_tax`   | `float`                                               |             |
| `outstanding_tax`           | `float`                                               |             |
| `paid_original_tax`         | `float`                                               |             |
| `paid_penalty_tax`          | `float`                                               |             |
| `paid_tax`                  | `float`                                               |             |
| `paid_tax_allowance`        | `float`                                               |             |
| `basic_salary`              | `float`                                               |             |
| `tax_allowance`             | `float`                                               |             |
| `other_allowance`           | `float`                                               |             |
| `honorarium`                | `float`                                               |             |
| `insurance_premium`         | `float`                                               |             |
| `enjoyment_revenue`         | `float`                                               |             |
| `bonus`                     | `float`                                               |             |
| `retirement_contribution`   | `float`                                               |             |
| `total_deduction`           | `float`                                               |             |
| `net_income`                | `float`                                               |             |
| `previous_net_income`       | `float`                                               |             |
| `total_net_income`          | `float`                                               |             |
| `base_income_tax_deduction` | `float`                                               |             |
| `base_income_tax`           | `float`                                               |             |
| `yearly_original_tax`       | `float`                                               |             |
| `yearly_penalty_tax`        | `float`                                               |             |
| `yearly_tax`                | `float`                                               |             |
| `previous_original_tax`     | `float`                                               |             |
| `previous_penalty_tax`      | `float`                                               |             |
| `previous_tax`              | `float`                                               |             |

## Usage Examples

### Creating an instance

```python
from catapa import TaxReport1721A1Response

tax_report1721_a1_response = TaxReport1721A1Response(
    id="''",
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    kpp=None,  # [KppSimpleResponse](KppSimpleResponse.md)
    external_id="''",
    year=1.337,
    end_month=1.337,
    sequence_number=1.337,
    membership_number="''",
    ptkp=1.337,
    job_title="''",
    total_gross_income=1.337,
    outstanding_original_tax=1.337,
    outstanding_penalty_tax=1.337,
    outstanding_tax=1.337,
    paid_original_tax=1.337,
    paid_penalty_tax=1.337,
    paid_tax=1.337,
    paid_tax_allowance=1.337,
    basic_salary=1.337,
    tax_allowance=1.337,
    other_allowance=1.337,
    honorarium=1.337,
    insurance_premium=1.337,
    enjoyment_revenue=1.337,
    bonus=1.337,
    retirement_contribution=1.337,
    total_deduction=1.337,
    net_income=1.337,
    previous_net_income=1.337,
    total_net_income=1.337,
    base_income_tax_deduction=1.337,
    base_income_tax=1.337,
    yearly_original_tax=1.337,
    yearly_penalty_tax=1.337,
    yearly_tax=1.337,
    previous_original_tax=1.337,
    previous_penalty_tax=1.337,
    previous_tax=1.337,
)
```

### Working with JSON

```python
from catapa import TaxReport1721A1Response

# Parse from JSON
json_str = '{"id": "example"}'
tax_report1721_a1_response = TaxReport1721A1Response.from_json(json_str)

# Convert to JSON
print(tax_report1721_a1_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxReport1721A1Response

# Convert to/from dictionary
data_dict = tax_report1721_a1_response.to_dict()
tax_report1721_a1_response = TaxReport1721A1Response.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_report1721_a1_response.id)
# Update properties
tax_report1721_a1_response.id = "new_value"
```
