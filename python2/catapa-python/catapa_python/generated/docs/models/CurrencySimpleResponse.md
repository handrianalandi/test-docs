# CurrencySimpleResponse

## Properties

| Name            | Type   | Description |
| :-------------- | :----- | :---------- |
| `id`            | `UUID` |             |
| `code`          | `str`  |             |
| `name`          | `str`  |             |
| `base_currency` | `bool` |             |

## Usage Examples

### Creating an instance

```python
from catapa import CurrencySimpleResponse

currency_simple_response = CurrencySimpleResponse(
    id="'d1ea18d8-a691-11e6-80f5-76304dec7066'",
    code="'IDR'",
    name="'Indonesian Rupiah'",
    base_currency=True,
)
```

### Working with JSON

```python
from catapa import CurrencySimpleResponse

# Parse from JSON
json_str = '{"id": "example"}'
currency_simple_response = CurrencySimpleResponse.from_json(json_str)

# Convert to JSON
print(currency_simple_response.to_json())
```

### Working with dictionaries

```python
from catapa import CurrencySimpleResponse

# Convert to/from dictionary
data_dict = currency_simple_response.to_dict()
currency_simple_response = CurrencySimpleResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(currency_simple_response.id)
# Update properties
currency_simple_response.id = "new_value"
```
