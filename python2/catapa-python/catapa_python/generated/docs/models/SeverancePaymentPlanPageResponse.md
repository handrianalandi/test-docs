# SeverancePaymentPlanPageResponse

## Properties

| Name                 | Type                                                                    | Description                                    |
| :------------------- | :---------------------------------------------------------------------- | :--------------------------------------------- |
| `total_pages`        | `int`                                                                   | Total number of pages available                |
| `last`               | `bool`                                                                  | Indicates whether this is the last page        |
| `total_elements`     | `int`                                                                   | Total number of elements across all pages      |
| `number_of_elements` | `int`                                                                   | Number of elements in the current page         |
| `sort`               | [`List[SortProperty]`](SortProperty.md)                                 |                                                |
| `first`              | `bool`                                                                  | Indicates whether this is the first page       |
| `size`               | `int`                                                                   | Size of the page (number of elements per page) |
| `number`             | `int`                                                                   | Current page number (zero-indexed)             |
| `content`            | [`List[SeverancePaymentPlanResponse]`](SeverancePaymentPlanResponse.md) |                                                |

## Usage Examples

### Creating an instance

```python
from catapa import SeverancePaymentPlanPageResponse

severance_payment_plan_page_response = SeverancePaymentPlanPageResponse(
    total_pages=56,
    last=True,
    total_elements=56,
    number_of_elements=56,
    sort=[],  # List[[SortProperty](SortProperty.md)]
    first=True,
    size=56,
    number=56,
    content=[],  # List[[SeverancePaymentPlanResponse](SeverancePaymentPlanResponse.md)]
)
```

### Working with JSON

```python
from catapa import SeverancePaymentPlanPageResponse

# Parse from JSON
json_str = '{"total_pages": "example"}'
severance_payment_plan_page_response = SeverancePaymentPlanPageResponse.from_json(
    json_str
)

# Convert to JSON
print(severance_payment_plan_page_response.to_json())
```

### Working with dictionaries

```python
from catapa import SeverancePaymentPlanPageResponse

# Convert to/from dictionary
data_dict = severance_payment_plan_page_response.to_dict()
severance_payment_plan_page_response = SeverancePaymentPlanPageResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(severance_payment_plan_page_response.total_pages)
# Update properties
severance_payment_plan_page_response.total_pages = new_value
```
