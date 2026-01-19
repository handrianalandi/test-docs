# ShiftPatternTemplateListItemResponse

## Properties

| Name                                  | Type                                                                                    | Description | Notes       |
| ------------------------------------- | --------------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**                                | **str**                                                                                 |             | \[optional] |
| **name**                              | **str**                                                                                 |             | \[optional] |
| **shift\_pattern\_template\_details** | [**List\[ShiftPatternTemplateDetailResponse\]**](shiftpatterntemplatedetailresponse.md) |             | \[optional] |

## Example

```python
from catapa import ShiftPatternTemplateListItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ShiftPatternTemplateListItemResponse from a JSON string
shift_pattern_template_list_item_response_instance = ShiftPatternTemplateListItemResponse.from_json(json)
# print the JSON string representation of the object
print(ShiftPatternTemplateListItemResponse.to_json())

# convert the object into a dict
shift_pattern_template_list_item_response_dict = shift_pattern_template_list_item_response_instance.to_dict()
# create an instance of ShiftPatternTemplateListItemResponse from a dict
shift_pattern_template_list_item_response_from_dict = ShiftPatternTemplateListItemResponse.from_dict(shift_pattern_template_list_item_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
