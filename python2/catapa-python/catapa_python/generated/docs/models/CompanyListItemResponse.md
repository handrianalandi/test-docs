# CompanyListItemResponse

## Properties

| Name            | Type                                          | Description |
| :-------------- | :-------------------------------------------- | :---------- |
| `id`            | `str`                                         |             |
| `name`          | `str`                                         |             |
| `code`          | `str`                                         |             |
| `company_group` | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import CompanyListItemResponse

company_list_item_response = CompanyListItemResponse(
    id="''",
    name="''",
    code="''",
    company_group=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import CompanyListItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
company_list_item_response = CompanyListItemResponse.from_json(json_str)

# Convert to JSON
print(company_list_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import CompanyListItemResponse

# Convert to/from dictionary
data_dict = company_list_item_response.to_dict()
company_list_item_response = CompanyListItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(company_list_item_response.id)
# Update properties
company_list_item_response.id = "new_value"
```
