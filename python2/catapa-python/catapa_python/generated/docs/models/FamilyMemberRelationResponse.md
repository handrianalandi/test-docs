# FamilyMemberRelationResponse

## Properties

| Name            | Type  | Description |
| :-------------- | :---- | :---------- |
| `id`            | `str` |             |
| `name`          | `str` |             |
| `code`          | `str` |             |
| `relation_type` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import FamilyMemberRelationResponse

family_member_relation_response = FamilyMemberRelationResponse(
    id="''", name="''", code="''", relation_type="'MOTHER'"
)
```

### Working with JSON

```python
from catapa import FamilyMemberRelationResponse

# Parse from JSON
json_str = '{"id": "example"}'
family_member_relation_response = FamilyMemberRelationResponse.from_json(json_str)

# Convert to JSON
print(family_member_relation_response.to_json())
```

### Working with dictionaries

```python
from catapa import FamilyMemberRelationResponse

# Convert to/from dictionary
data_dict = family_member_relation_response.to_dict()
family_member_relation_response = FamilyMemberRelationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(family_member_relation_response.id)
# Update properties
family_member_relation_response.id = "new_value"
```
