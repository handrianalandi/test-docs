# CountryResponse

## Properties

| Name           | Type   | Description |
| :------------- | :----- | :---------- |
| `id`           | `str`  |             |
| `code`         | `str`  |             |
| `name`         | `str`  |             |
| `calling_code` | `str`  |             |
| `tax_treaty`   | `bool` |             |

## Usage Examples

### Creating an instance

```python
from catapa import CountryResponse

country_response = CountryResponse(
    id="''", code="''", name="''", calling_code="''", tax_treaty=True
)
```

### Working with JSON

```python
from catapa import CountryResponse

# Parse from JSON
json_str = '{"id": "example"}'
country_response = CountryResponse.from_json(json_str)

# Convert to JSON
print(country_response.to_json())
```

### Working with dictionaries

```python
from catapa import CountryResponse

# Convert to/from dictionary
data_dict = country_response.to_dict()
country_response = CountryResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(country_response.id)
# Update properties
country_response.id = "new_value"
```
