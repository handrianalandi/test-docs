# TerminationReasonCategoryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 

## Example

```python
from catapa import TerminationReasonCategoryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationReasonCategoryResponse from a JSON string
termination_reason_category_response_instance = TerminationReasonCategoryResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationReasonCategoryResponse.to_json())

# convert the object into a dict
termination_reason_category_response_dict = termination_reason_category_response_instance.to_dict()
# create an instance of TerminationReasonCategoryResponse from a dict
termination_reason_category_response_from_dict = TerminationReasonCategoryResponse.from_dict(termination_reason_category_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



