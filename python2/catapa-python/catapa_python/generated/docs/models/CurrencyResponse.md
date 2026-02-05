# CurrencyResponse

## Properties

| Name            | Type   | Description |
| :-------------- | :----- | :---------- |
| `id`            | `UUID` |             |
| `created_by`    | `str`  |             |
| `created_date`  | `int`  |             |
| `updated_by`    | `str`  |             |
| `updated_date`  | `int`  |             |
| `code`          | `str`  |             |
| `name`          | `str`  |             |
| `base_currency` | `bool` |             |

## Usage Examples

### Creating an instance

```python
from catapa import CurrencyResponse

currency_response = CurrencyResponse(
    id="'d1ea18d8-a691-11e6-80f5-76304dec7066'",
    created_by="'system'",
    created_date=1478586884810,
    updated_by="'system'",
    updated_date=1478586884810,
    code="'IDR'",
    name="'Indonesian Rupiah'",
    base_currency=True,
)
```

### Working with JSON

```python
from catapa import CurrencyResponse

# Parse from JSON
json_str = '{"id": "example"}'
currency_response = CurrencyResponse.from_json(json_str)

# Convert to JSON
print(currency_response.to_json())
```

### Working with dictionaries

```python
from catapa import CurrencyResponse

# Convert to/from dictionary
data_dict = currency_response.to_dict()
currency_response = CurrencyResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(currency_response.id)
# Update properties
currency_response.id = "new_value"
```
