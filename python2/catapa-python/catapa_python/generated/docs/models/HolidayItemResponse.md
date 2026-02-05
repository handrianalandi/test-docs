# HolidayItemResponse

## Properties

| Name           | Type   | Description         |
| :------------- | :----- | :------------------ |
| `holiday_date` | `date` | Date of the holiday |
| `name`         | `str`  | Name of the holiday |

## Usage Examples

### Creating an instance

```python
from catapa import HolidayItemResponse

holiday_item_response = HolidayItemResponse(
    holiday_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(), name="''"
)
```

### Working with JSON

```python
from catapa import HolidayItemResponse

# Parse from JSON
json_str = '{"holiday_date": "example"}'
holiday_item_response = HolidayItemResponse.from_json(json_str)

# Convert to JSON
print(holiday_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import HolidayItemResponse

# Convert to/from dictionary
data_dict = holiday_item_response.to_dict()
holiday_item_response = HolidayItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(holiday_item_response.holiday_date)
# Update properties
holiday_item_response.holiday_date = new_value
```
