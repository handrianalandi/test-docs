# BankBranchSimpleResponse

## Properties

| Name   | Type                                          | Description |
| :----- | :-------------------------------------------- | :---------- |
| `id`   | `str`                                         |             |
| `bank` | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import BankBranchSimpleResponse

bank_branch_simple_response = BankBranchSimpleResponse(
    id="''", bank=None  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import BankBranchSimpleResponse

# Parse from JSON
json_str = '{"id": "example"}'
bank_branch_simple_response = BankBranchSimpleResponse.from_json(json_str)

# Convert to JSON
print(bank_branch_simple_response.to_json())
```

### Working with dictionaries

```python
from catapa import BankBranchSimpleResponse

# Convert to/from dictionary
data_dict = bank_branch_simple_response.to_dict()
bank_branch_simple_response = BankBranchSimpleResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(bank_branch_simple_response.id)
# Update properties
bank_branch_simple_response.id = "new_value"
```
