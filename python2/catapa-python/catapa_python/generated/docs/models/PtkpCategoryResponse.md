# PtkpCategoryResponse

## Properties

| Name            | Type    | Description |
| :-------------- | :------ | :---------- |
| `id`            | `str`   |             |
| `code`          | `str`   |             |
| `name`          | `str`   |             |
| `max_dependent` | `float` |             |
| `formula`       | `str`   |             |

## Usage Examples

### Creating an instance

```python
from catapa import PtkpCategoryResponse

ptkp_category_response = PtkpCategoryResponse(
    id="''", code="''", name="''", max_dependent=1.337, formula="''"
)
```

### Working with JSON

```python
from catapa import PtkpCategoryResponse

# Parse from JSON
json_str = '{"id": "example"}'
ptkp_category_response = PtkpCategoryResponse.from_json(json_str)

# Convert to JSON
print(ptkp_category_response.to_json())
```

### Working with dictionaries

```python
from catapa import PtkpCategoryResponse

# Convert to/from dictionary
data_dict = ptkp_category_response.to_dict()
ptkp_category_response = PtkpCategoryResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(ptkp_category_response.id)
# Update properties
ptkp_category_response.id = "new_value"
```
