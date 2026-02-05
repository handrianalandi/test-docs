# PaygroupResponse

## Properties

| Name                  | Type    | Description |
| :-------------------- | :------ | :---------- |
| `id`                  | `str`   |             |
| `code`                | `str`   |             |
| `name`                | `str`   |             |
| `cutoff_type`         | `str`   |             |
| `cutoff_day_of_week`  | `str`   |             |
| `daily_cutoff_date`   | `float` |             |
| `daily_cutoff_base`   | `str`   |             |
| `default_paygroup`    | `bool`  |             |
| `monthly_cutoff_date` | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import PaygroupResponse

paygroup_response = PaygroupResponse(
    id="''",
    code="''",
    name="''",
    cutoff_type="''",
    cutoff_day_of_week="''",
    daily_cutoff_date=1.337,
    daily_cutoff_base="''",
    default_paygroup=True,
    monthly_cutoff_date=1.337,
)
```

### Working with JSON

```python
from catapa import PaygroupResponse

# Parse from JSON
json_str = '{"id": "example"}'
paygroup_response = PaygroupResponse.from_json(json_str)

# Convert to JSON
print(paygroup_response.to_json())
```

### Working with dictionaries

```python
from catapa import PaygroupResponse

# Convert to/from dictionary
data_dict = paygroup_response.to_dict()
paygroup_response = PaygroupResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(paygroup_response.id)
# Update properties
paygroup_response.id = "new_value"
```
