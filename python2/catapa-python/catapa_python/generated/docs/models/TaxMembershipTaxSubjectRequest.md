# TaxMembershipTaxSubjectRequest

## Properties

| Name               | Type                                                  | Required | Description                                                |
| :----------------- | :---------------------------------------------------- | :------: | :--------------------------------------------------------- |
| `npwp_address`     | `str`                                                 |    ✅    | Address registered with NPWP                               |
| `npwp_number`      | `str`                                                 |    ❌    | NPWP (Tax ID) number - can be empty or contain only digits |
| `id_tku`           | `str`                                                 |    ❌    | TKU (Tax Knowledge Unit) identifier                        |
| `tin`              | `str`                                                 |    ❌    | Tax Identification Number                                  |
| `kpp_id`           | `str`                                                 |    ❌    | Tax office (KPP) identifier                                |
| `ptkp_category_id` | `str`                                                 |    ❌    | PTKP (Personal Tax Free Income) category identifier        |
| `tax_dependents`   | [`List[TaxDependentRequest]`](TaxDependentRequest.md) |    ❌    | List of tax dependents for PTKP calculation                |

## Usage Examples

### Creating an instance

```python
from catapa import TaxMembershipTaxSubjectRequest

tax_membership_tax_subject_request = TaxMembershipTaxSubjectRequest(
    npwp_address="''",
    npwp_number="'80728'",
    id_tku="''",
    tin="''",
    kpp_id="''",
    ptkp_category_id="''",
    tax_dependents=[],  # List[[TaxDependentRequest](TaxDependentRequest.md)]
)
```

### Working with JSON

```python
from catapa import TaxMembershipTaxSubjectRequest

# Parse from JSON
json_str = '{"npwp_address": "example"}'
tax_membership_tax_subject_request = TaxMembershipTaxSubjectRequest.from_json(json_str)

# Convert to JSON
print(tax_membership_tax_subject_request.to_json())
```

### Working with dictionaries

```python
from catapa import TaxMembershipTaxSubjectRequest

# Convert to/from dictionary
data_dict = tax_membership_tax_subject_request.to_dict()
tax_membership_tax_subject_request = TaxMembershipTaxSubjectRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_membership_tax_subject_request.npwp_address)
# Update properties
tax_membership_tax_subject_request.npwp_address = "new_value"
```
