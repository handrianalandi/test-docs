# EditableSalaryPreprocessResponse

## Properties

| Name        | Type                                                                          | Description |
| :---------- | :---------------------------------------------------------------------------- | :---------- |
| `successes` | [`List[EditableSalaryPreprocessSuccess]`](EditableSalaryPreprocessSuccess.md) |             |
| `failures`  | [`List[BulkOperationFailureResponse]`](BulkOperationFailureResponse.md)       |             |

## Usage Examples

### Creating an instance

```python
from catapa import EditableSalaryPreprocessResponse

editable_salary_preprocess_response = EditableSalaryPreprocessResponse(
    successes=[],  # List[[EditableSalaryPreprocessSuccess](EditableSalaryPreprocessSuccess.md)]
    failures=[],  # List[[BulkOperationFailureResponse](BulkOperationFailureResponse.md)]
)
```

### Working with JSON

```python
from catapa import EditableSalaryPreprocessResponse

# Parse from JSON
json_str = '{"successes": "example"}'
editable_salary_preprocess_response = EditableSalaryPreprocessResponse.from_json(
    json_str
)

# Convert to JSON
print(editable_salary_preprocess_response.to_json())
```

### Working with dictionaries

```python
from catapa import EditableSalaryPreprocessResponse

# Convert to/from dictionary
data_dict = editable_salary_preprocess_response.to_dict()
editable_salary_preprocess_response = EditableSalaryPreprocessResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(editable_salary_preprocess_response.successes)
# Update properties
editable_salary_preprocess_response.successes = new_value
```
