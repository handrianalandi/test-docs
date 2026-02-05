# JobTitleLevelMappingPageResponse

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
| `content`            | [`List[JobTitleLevelMappingResponse]`](JobTitleLevelMappingResponse.md) |                                                |

## Usage Examples

### Creating an instance

```python
from catapa import JobTitleLevelMappingPageResponse

job_title_level_mapping_page_response = JobTitleLevelMappingPageResponse(
    total_pages=56,
    last=True,
    total_elements=56,
    number_of_elements=56,
    sort=[],  # List[[SortProperty](SortProperty.md)]
    first=True,
    size=56,
    number=56,
    content=[],  # List[[JobTitleLevelMappingResponse](JobTitleLevelMappingResponse.md)]
)
```

### Working with JSON

```python
from catapa import JobTitleLevelMappingPageResponse

# Parse from JSON
json_str = '{"total_pages": "example"}'
job_title_level_mapping_page_response = JobTitleLevelMappingPageResponse.from_json(
    json_str
)

# Convert to JSON
print(job_title_level_mapping_page_response.to_json())
```

### Working with dictionaries

```python
from catapa import JobTitleLevelMappingPageResponse

# Convert to/from dictionary
data_dict = job_title_level_mapping_page_response.to_dict()
job_title_level_mapping_page_response = JobTitleLevelMappingPageResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(job_title_level_mapping_page_response.total_pages)
# Update properties
job_title_level_mapping_page_response.total_pages = new_value
```
