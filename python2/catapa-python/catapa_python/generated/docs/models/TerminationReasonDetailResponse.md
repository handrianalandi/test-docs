# TerminationReasonDetailResponse

## Properties

| Name                               | Type                                                                                | Description                    |
| :--------------------------------- | :---------------------------------------------------------------------------------- | :----------------------------- |
| `id`                               | `str`                                                                               |                                |
| `name`                             | `str`                                                                               |                                |
| `termination_pph21_reason`         | `str`                                                                               | Use taxReason instead          |
| `termination_bpjs_manpower_reason` | `str`                                                                               | Use bpjsManpowerReason instead |
| `termination_reason_category`      | `str`                                                                               | Use reasonCategory instead     |
| `tax_reason`                       | [`TerminationTaxReasonResponse`](TerminationTaxReasonResponse.md)                   |                                |
| `bpjs_manpower_reason`             | [`TerminationBPJSManpowerReasonResponse`](TerminationBPJSManpowerReasonResponse.md) |                                |
| `reason_category`                  | [`TerminationReasonCategoryResponse`](TerminationReasonCategoryResponse.md)         |                                |
| `severance`                        | `bool`                                                                              |                                |

## Usage Examples

### Creating an instance

```python
from catapa import TerminationReasonDetailResponse

termination_reason_detail_response = TerminationReasonDetailResponse(
    id="''",
    name="''",
    termination_pph21_reason="''",
    termination_bpjs_manpower_reason="''",
    termination_reason_category="''",
    tax_reason=None,  # [TerminationTaxReasonResponse](TerminationTaxReasonResponse.md)
    bpjs_manpower_reason=None,  # [TerminationBPJSManpowerReasonResponse](TerminationBPJSManpowerReasonResponse.md)
    reason_category=None,  # [TerminationReasonCategoryResponse](TerminationReasonCategoryResponse.md)
    severance=True,
)
```

### Working with JSON

```python
from catapa import TerminationReasonDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
termination_reason_detail_response = TerminationReasonDetailResponse.from_json(json_str)

# Convert to JSON
print(termination_reason_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import TerminationReasonDetailResponse

# Convert to/from dictionary
data_dict = termination_reason_detail_response.to_dict()
termination_reason_detail_response = TerminationReasonDetailResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(termination_reason_detail_response.id)
# Update properties
termination_reason_detail_response.id = "new_value"
```
