# AdditionalAssignmentApprovalPageResponse

## Properties

| Name                 | Type                                                                                    | Description                                    |
| :------------------- | :-------------------------------------------------------------------------------------- | :--------------------------------------------- |
| `total_pages`        | `int`                                                                                   | Total number of pages available                |
| `last`               | `bool`                                                                                  | Indicates whether this is the last page        |
| `total_elements`     | `int`                                                                                   | Total number of elements across all pages      |
| `number_of_elements` | `int`                                                                                   | Number of elements in the current page         |
| `sort`               | [`List[SortProperty]`](SortProperty.md)                                                 |                                                |
| `first`              | `bool`                                                                                  | Indicates whether this is the first page       |
| `size`               | `int`                                                                                   | Size of the page (number of elements per page) |
| `number`             | `int`                                                                                   | Current page number (zero-indexed)             |
| `content`            | [`List[AdditionalAssignmentApprovalResponse]`](AdditionalAssignmentApprovalResponse.md) |                                                |

## Usage Examples

### Creating an instance

```python
from catapa import AdditionalAssignmentApprovalPageResponse

additional_assignment_approval_page_response = AdditionalAssignmentApprovalPageResponse(
    total_pages=56,
    last=True,
    total_elements=56,
    number_of_elements=56,
    sort=[],  # List[[SortProperty](SortProperty.md)]
    first=True,
    size=56,
    number=56,
    content=[],  # List[[AdditionalAssignmentApprovalResponse](AdditionalAssignmentApprovalResponse.md)]
)
```

### Working with JSON

```python
from catapa import AdditionalAssignmentApprovalPageResponse

# Parse from JSON
json_str = '{"total_pages": "example"}'
additional_assignment_approval_page_response = (
    AdditionalAssignmentApprovalPageResponse.from_json(json_str)
)

# Convert to JSON
print(additional_assignment_approval_page_response.to_json())
```

### Working with dictionaries

```python
from catapa import AdditionalAssignmentApprovalPageResponse

# Convert to/from dictionary
data_dict = additional_assignment_approval_page_response.to_dict()
additional_assignment_approval_page_response = (
    AdditionalAssignmentApprovalPageResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(additional_assignment_approval_page_response.total_pages)
# Update properties
additional_assignment_approval_page_response.total_pages = new_value
```
