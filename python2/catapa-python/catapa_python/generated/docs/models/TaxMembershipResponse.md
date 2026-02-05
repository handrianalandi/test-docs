# TaxMembershipResponse

## Properties

| Name                      | Type                                                            | Description                                                |
| :------------------------ | :-------------------------------------------------------------- | :--------------------------------------------------------- |
| `id`                      | `str`                                                           | Unique identifier for the tax membership                   |
| `foreign_tax_object`      | `bool`                                                          | Whether this is a foreign tax object                       |
| `kpp_id`                  | `str`                                                           | Tax office (KPP) identifier                                |
| `link_to_payroll`         | `bool`                                                          | Whether this tax membership is linked to payroll           |
| `membership_end_period`   | [`TaxMembershipPeriodResponse`](TaxMembershipPeriodResponse.md) |                                                            |
| `membership_start_period` | [`TaxMembershipPeriodResponse`](TaxMembershipPeriodResponse.md) |                                                            |
| `effective_end_period`    | [`TaxMembershipPeriodResponse`](TaxMembershipPeriodResponse.md) |                                                            |
| `effective_start_period`  | [`TaxMembershipPeriodResponse`](TaxMembershipPeriodResponse.md) |                                                            |
| `method`                  | `str`                                                           | PPh21 calculation method                                   |
| `more_than_one_employer`  | `bool`                                                          | Whether employee has more than one employer                |
| `npwp_address`            | `str`                                                           | Address registered with NPWP                               |
| `npwp_number`             | `str`                                                           | NPWP (Tax ID) number - can be empty or contain only digits |
| `tin`                     | `str`                                                           | Tax Identification Number                                  |
| `previous_net_income`     | `float`                                                         | Previous net income amount                                 |
| `previous_paid_pph`       | `float`                                                         | Previous paid PPh amount                                   |
| `ptkp_category_id`        | `str`                                                           | PTKP (Personal Tax Free Income) category identifier        |
| `tax_object`              | `str`                                                           | Type of tax object for the employee                        |
| `use_recommended_period`  | `bool`                                                          |                                                            |
| `tax_dependents`          | [`List[TaxDependentResponse]`](TaxDependentResponse.md)         | List of tax dependents for PTKP calculation                |

## Usage Examples

### Creating an instance

```python
from catapa import TaxMembershipResponse

tax_membership_response = TaxMembershipResponse(
    id="''",
    foreign_tax_object=True,
    kpp_id="''",
    link_to_payroll=True,
    membership_end_period=None,  # [TaxMembershipPeriodResponse](TaxMembershipPeriodResponse.md)
    membership_start_period=None,  # [TaxMembershipPeriodResponse](TaxMembershipPeriodResponse.md)
    effective_end_period=None,  # [TaxMembershipPeriodResponse](TaxMembershipPeriodResponse.md)
    effective_start_period=None,  # [TaxMembershipPeriodResponse](TaxMembershipPeriodResponse.md)
    method="'GROSS'",
    more_than_one_employer=True,
    npwp_address="''",
    npwp_number="'80728'",
    tin="''",
    previous_net_income=0,
    previous_paid_pph=0,
    ptkp_category_id="''",
    tax_object="'PERMANENT'",
    use_recommended_period=True,
    tax_dependents=[],  # List[[TaxDependentResponse](TaxDependentResponse.md)]
)
```

### Working with JSON

```python
from catapa import TaxMembershipResponse

# Parse from JSON
json_str = '{"id": "example"}'
tax_membership_response = TaxMembershipResponse.from_json(json_str)

# Convert to JSON
print(tax_membership_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxMembershipResponse

# Convert to/from dictionary
data_dict = tax_membership_response.to_dict()
tax_membership_response = TaxMembershipResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_membership_response.id)
# Update properties
tax_membership_response.id = "new_value"
```
