# BankAccountConfigurationResponseSource

## Properties

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import BankAccountConfigurationResponseSource

bank_account_configuration_response_source = BankAccountConfigurationResponseSource(
    id="''"
)
```

### Working with JSON

```python
from catapa import BankAccountConfigurationResponseSource

# Parse from JSON
json_str = '{"id": "example"}'
bank_account_configuration_response_source = (
    BankAccountConfigurationResponseSource.from_json(json_str)
)

# Convert to JSON
print(bank_account_configuration_response_source.to_json())
```

### Working with dictionaries

```python
from catapa import BankAccountConfigurationResponseSource

# Convert to/from dictionary
data_dict = bank_account_configuration_response_source.to_dict()
bank_account_configuration_response_source = (
    BankAccountConfigurationResponseSource.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(bank_account_configuration_response_source.id)
# Update properties
bank_account_configuration_response_source.id = "new_value"
```
