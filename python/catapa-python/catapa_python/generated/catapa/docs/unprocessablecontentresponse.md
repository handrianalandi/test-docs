# UnprocessableContentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **str** | Error message | [optional] 
**details** | **List[str]** | Business validation errors | [optional] 

## Example

```python
from catapa import UnprocessableContentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UnprocessableContentResponse from a JSON string
unprocessable_content_response_instance = UnprocessableContentResponse.from_json(json)
# print the JSON string representation of the object
print(UnprocessableContentResponse.to_json())

# convert the object into a dict
unprocessable_content_response_dict = unprocessable_content_response_instance.to_dict()
# create an instance of UnprocessableContentResponse from a dict
unprocessable_content_response_from_dict = UnprocessableContentResponse.from_dict(unprocessable_content_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



