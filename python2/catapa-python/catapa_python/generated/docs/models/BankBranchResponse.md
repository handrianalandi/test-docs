# BankBranchResponse

## Properties

| Name      | Type                              | Description |
| :-------- | :-------------------------------- | :---------- |
| `id`      | `UUID`                            |             |
| `name`    | `str`                             |             |
| `code`    | `str`                             |             |
| `address` | `str`                             |             |
| `bank`    | [`BankResponse`](BankResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import BankBranchResponse

bank_branch_response = BankBranchResponse(
    id="'0e5f074c-c929-11e6-9d9d-cec0c932ce01'",
    name="'BCA Wisma Asia'",
    code="'BCA01'",
    address="'BCA01'",
    bank=None,  # [BankResponse](BankResponse.md)
)
```

### Working with JSON

```python
from catapa import BankBranchResponse

# Parse from JSON
json_str = '{"id": "example"}'
bank_branch_response = BankBranchResponse.from_json(json_str)

# Convert to JSON
print(bank_branch_response.to_json())
```

### Working with dictionaries

```python
from catapa import BankBranchResponse

# Convert to/from dictionary
data_dict = bank_branch_response.to_dict()
bank_branch_response = BankBranchResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(bank_branch_response.id)
# Update properties
bank_branch_response.id = "new_value"
```
