# TaxDependentRequest

## Properties

| Name                 | Type       | Required | Description                             |
| :------------------- | :--------- | :------: | :-------------------------------------- |
| `id`                 | `str`      |    ❌    | Unique identifier for the tax dependent |
| `name`               | `str`      |    ✅    | Name of the tax dependent               |
| `ptkp_relation_type` | `str`      |    ✅    | Relationship type for PTKP calculation  |
| `date_of_birth`      | `datetime` |    ✅    | Date of birth of the tax dependent      |
| `job`                | `str`      |    ❌    | Job or occupation of the tax dependent  |

## Usage Examples

### Creating an instance

```python
from catapa import TaxDependentRequest

tax_dependent_request = TaxDependentRequest(
    id="''",
    name="''",
    ptkp_relation_type="'CHILD'",
    date_of_birth=datetime.datetime.strptime(
        "2013-10-20 19:20:30.00", "%Y-%m-%d %H:%M:%S.%f"
    ),
    job="''",
)
```

### Working with JSON

```python
from catapa import TaxDependentRequest

# Parse from JSON
json_str = '{"id": "example"}'
tax_dependent_request = TaxDependentRequest.from_json(json_str)

# Convert to JSON
print(tax_dependent_request.to_json())
```

### Working with dictionaries

```python
from catapa import TaxDependentRequest

# Convert to/from dictionary
data_dict = tax_dependent_request.to_dict()
tax_dependent_request = TaxDependentRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_dependent_request.id)
# Update properties
tax_dependent_request.id = "new_value"
```
