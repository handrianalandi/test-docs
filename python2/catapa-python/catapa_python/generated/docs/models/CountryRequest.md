# CountryRequest

## Properties

| Name           | Type   | Required | Description        |
| :------------- | :----- | :------: | :----------------- |
| `code`         | `str`  |    ✅    |                    |
| `calling_code` | `str`  |    ✅    | e.g. \`+62\`       |
| `name`         | `str`  |    ✅    |                    |
| `tax_treaty`   | `bool` |    ❌    | (default: `False`) |

## Usage Examples

### Creating an instance

```python
from catapa import CountryRequest

country_request = CountryRequest(
    code="'0'", calling_code="'+40'", name="'0'", tax_treaty=True
)
```

### Working with JSON

```python
from catapa import CountryRequest

# Parse from JSON
json_str = '{"code": "example"}'
country_request = CountryRequest.from_json(json_str)

# Convert to JSON
print(country_request.to_json())
```

### Working with dictionaries

```python
from catapa import CountryRequest

# Convert to/from dictionary
data_dict = country_request.to_dict()
country_request = CountryRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(country_request.code)
# Update properties
country_request.code = "new_value"
```
