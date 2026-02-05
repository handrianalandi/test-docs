# TaxDependentResponse

## Properties

| Name                 | Type   | Description                            |
| :------------------- | :----- | :------------------------------------- |
| `name`               | `str`  | Name of the tax dependent              |
| `ptkp_relation_type` | `str`  | Relationship type for PTKP calculation |
| `date_of_birth`      | `date` | Date of birth of the tax dependent     |
| `job`                | `str`  | Job or occupation of the tax dependent |

## Usage Examples

### Creating an instance

```python
from catapa import TaxDependentResponse

tax_dependent_response = TaxDependentResponse(
    name="''",
    ptkp_relation_type="'SPOUSE'",
    date_of_birth=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    job="''",
)
```

### Working with JSON

```python
from catapa import TaxDependentResponse

# Parse from JSON
json_str = '{"name": "example"}'
tax_dependent_response = TaxDependentResponse.from_json(json_str)

# Convert to JSON
print(tax_dependent_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxDependentResponse

# Convert to/from dictionary
data_dict = tax_dependent_response.to_dict()
tax_dependent_response = TaxDependentResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_dependent_response.name)
# Update properties
tax_dependent_response.name = "new_value"
```
