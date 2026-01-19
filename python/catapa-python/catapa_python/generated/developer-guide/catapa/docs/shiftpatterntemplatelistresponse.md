# ShiftPatternTemplateListResponse

## Properties

| Name                     | Type                                                                                        | Description | Notes       |
| ------------------------ | ------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                                     |             | \[optional] |
| **last**                 | **bool**                                                                                    |             | \[optional] |
| **total\_elements**      | **int**                                                                                     |             | \[optional] |
| **number\_of\_elements** | **int**                                                                                     |             | \[optional] |
| **has\_content**         | **bool**                                                                                    |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                                                 |             | \[optional] |
| **first**                | **bool**                                                                                    |             | \[optional] |
| **size**                 | **int**                                                                                     |             | \[optional] |
| **number**               | **int**                                                                                     |             | \[optional] |
| **content**              | [**List\[ShiftPatternTemplateListItemResponse\]**](shiftpatterntemplatelistitemresponse.md) |             | \[optional] |

## Example

```python
from catapa import ShiftPatternTemplateListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ShiftPatternTemplateListResponse from a JSON string
shift_pattern_template_list_response_instance = ShiftPatternTemplateListResponse.from_json(json)
# print the JSON string representation of the object
print(ShiftPatternTemplateListResponse.to_json())

# convert the object into a dict
shift_pattern_template_list_response_dict = shift_pattern_template_list_response_instance.to_dict()
# create an instance of ShiftPatternTemplateListResponse from a dict
shift_pattern_template_list_response_from_dict = ShiftPatternTemplateListResponse.from_dict(shift_pattern_template_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
