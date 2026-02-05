# SalaryItemSimpleResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `code` | `str` |             |
| `name` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryItemSimpleResponse

salary_item_simple_response = SalaryItemSimpleResponse(code="''", name="''")
```

### Working with JSON

```python
from catapa import SalaryItemSimpleResponse

# Parse from JSON
json_str = '{"code": "example"}'
salary_item_simple_response = SalaryItemSimpleResponse.from_json(json_str)

# Convert to JSON
print(salary_item_simple_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryItemSimpleResponse

# Convert to/from dictionary
data_dict = salary_item_simple_response.to_dict()
salary_item_simple_response = SalaryItemSimpleResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_item_simple_response.code)
# Update properties
salary_item_simple_response.code = "new_value"
```
