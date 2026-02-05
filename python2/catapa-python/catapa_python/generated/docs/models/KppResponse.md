# KppResponse

## Properties

| Name                           | Type  | Description                         |
| :----------------------------- | :---- | :---------------------------------- |
| `id`                           | `str` | KPP unique identifier               |
| `code`                         | `str` | KPP code                            |
| `name`                         | `str` | KPP name                            |
| `address`                      | `str` | KPP address                         |
| `responsible_person_name`      | `str` | Name of the responsible person      |
| `responsible_person_npwp`      | `str` | NPWP of the responsible person      |
| `responsible_person_job_title` | `str` | Job title of the responsible person |
| `kpp_status`                   | `str` | Status of the KPP                   |

## Usage Examples

### Creating an instance

```python
from catapa import KppResponse

kpp_response = KppResponse(
    id="''",
    code="''",
    name="''",
    address="''",
    responsible_person_name="''",
    responsible_person_npwp="''",
    responsible_person_job_title="''",
    kpp_status="''",
)
```

### Working with JSON

```python
from catapa import KppResponse

# Parse from JSON
json_str = '{"id": "example"}'
kpp_response = KppResponse.from_json(json_str)

# Convert to JSON
print(kpp_response.to_json())
```

### Working with dictionaries

```python
from catapa import KppResponse

# Convert to/from dictionary
data_dict = kpp_response.to_dict()
kpp_response = KppResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(kpp_response.id)
# Update properties
kpp_response.id = "new_value"
```
