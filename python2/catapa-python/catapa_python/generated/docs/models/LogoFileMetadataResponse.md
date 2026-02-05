# LogoFileMetadataResponse

## Properties

| Name       | Type  | Description |
| :--------- | :---- | :---------- |
| `filename` | `str` |             |
| `path`     | `str` |             |
| `url`      | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import LogoFileMetadataResponse

logo_file_metadata_response = LogoFileMetadataResponse(
    filename="''", path="''", url="''"
)
```

### Working with JSON

```python
from catapa import LogoFileMetadataResponse

# Parse from JSON
json_str = '{"filename": "example"}'
logo_file_metadata_response = LogoFileMetadataResponse.from_json(json_str)

# Convert to JSON
print(logo_file_metadata_response.to_json())
```

### Working with dictionaries

```python
from catapa import LogoFileMetadataResponse

# Convert to/from dictionary
data_dict = logo_file_metadata_response.to_dict()
logo_file_metadata_response = LogoFileMetadataResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(logo_file_metadata_response.filename)
# Update properties
logo_file_metadata_response.filename = "new_value"
```
