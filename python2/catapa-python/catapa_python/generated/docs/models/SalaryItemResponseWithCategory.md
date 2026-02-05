# SalaryItemResponseWithCategory

## Properties

| Name                   | Type  | Required | Description |
| :--------------------- | :---- | :------: | :---------- |
| `code`                 | `str` |    ❌    |             |
| `id`                   | `str` |    ❌    |             |
| `name`                 | `str` |    ❌    |             |
| `salary_item_category` | `str` |    ❌    |             |
| `salary_item_type`     | `str` |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryItemResponseWithCategory

salary_item_response_with_category = SalaryItemResponseWithCategory(
    code="''", id="''", name="''", salary_item_category="''", salary_item_type="''"
)
```

### Working with JSON

```python
from catapa import SalaryItemResponseWithCategory

# Parse from JSON
json_str = '{"code": "example"}'
salary_item_response_with_category = SalaryItemResponseWithCategory.from_json(json_str)

# Convert to JSON
print(salary_item_response_with_category.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryItemResponseWithCategory

# Convert to/from dictionary
data_dict = salary_item_response_with_category.to_dict()
salary_item_response_with_category = SalaryItemResponseWithCategory.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_item_response_with_category.code)
# Update properties
salary_item_response_with_category.code = "new_value"
```
