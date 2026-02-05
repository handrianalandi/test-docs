# CompanyDetailTimeZoneRequest

Please refer to [Wikipedia](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). The `code` refers to the `TZ identifier` column, and the `offset` corresponds to the `UTC offset` > `SDT` column.

## Properties

| Name     | Type  | Required | Description                                                               |
| :------- | :---- | :------: | :------------------------------------------------------------------------ |
| `code`   | `str` |    ✅    |                                                                           |
| `offset` | `str` |    ✅    | The \`offset\` must be between \`-18\` and \`+18\` hours, e.g. \`+07:00\` |

## Usage Examples

### Creating an instance

```python
from catapa import CompanyDetailTimeZoneRequest

company_detail_time_zone_request = CompanyDetailTimeZoneRequest(
    code="''", offset="'-20:07'"
)
```

### Working with JSON

```python
from catapa import CompanyDetailTimeZoneRequest

# Parse from JSON
json_str = '{"code": "example"}'
company_detail_time_zone_request = CompanyDetailTimeZoneRequest.from_json(json_str)

# Convert to JSON
print(company_detail_time_zone_request.to_json())
```

### Working with dictionaries

```python
from catapa import CompanyDetailTimeZoneRequest

# Convert to/from dictionary
data_dict = company_detail_time_zone_request.to_dict()
company_detail_time_zone_request = CompanyDetailTimeZoneRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(company_detail_time_zone_request.code)
# Update properties
company_detail_time_zone_request.code = "new_value"
```
