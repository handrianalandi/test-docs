# AddressDetailResponse

## Properties

| Name       | Type                              | Description |
| :--------- | :-------------------------------- | :---------- |
| `address`  | `str`                             |             |
| `zip_code` | `str`                             |             |
| `phone`    | `str`                             |             |
| `district` | `str`                             |             |
| `city`     | [`CityResponse`](CityResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import AddressDetailResponse

address_detail_response = AddressDetailResponse(
    address="''",
    zip_code="''",
    phone="''",
    district="''",
    city=None,  # [CityResponse](CityResponse.md)
)
```

### Working with JSON

```python
from catapa import AddressDetailResponse

# Parse from JSON
json_str = '{"address": "example"}'
address_detail_response = AddressDetailResponse.from_json(json_str)

# Convert to JSON
print(address_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import AddressDetailResponse

# Convert to/from dictionary
data_dict = address_detail_response.to_dict()
address_detail_response = AddressDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(address_detail_response.address)
# Update properties
address_detail_response.address = "new_value"
```
