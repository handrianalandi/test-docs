# TaxMembershipPeriodResponse

## Properties

| Name    | Type  | Description                      |
| :------ | :---- | :------------------------------- |
| `month` | `int` | Month of membership start period |
| `year`  | `int` | Year of membership start period  |

## Usage Examples

### Creating an instance

```python
from catapa import TaxMembershipPeriodResponse

tax_membership_period_response = TaxMembershipPeriodResponse(month=1, year=1970)
```

### Working with JSON

```python
from catapa import TaxMembershipPeriodResponse

# Parse from JSON
json_str = '{"month": "example"}'
tax_membership_period_response = TaxMembershipPeriodResponse.from_json(json_str)

# Convert to JSON
print(tax_membership_period_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxMembershipPeriodResponse

# Convert to/from dictionary
data_dict = tax_membership_period_response.to_dict()
tax_membership_period_response = TaxMembershipPeriodResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_membership_period_response.month)
# Update properties
tax_membership_period_response.month = new_value
```
