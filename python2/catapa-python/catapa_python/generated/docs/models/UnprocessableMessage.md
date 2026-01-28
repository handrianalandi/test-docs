# UnprocessableMessage


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**description** | **str** |  | 

## Example

```python
from catapa import UnprocessableMessage

# TODO update the JSON string below
json = "{}"
# create an instance of UnprocessableMessage from a JSON string
unprocessable_message_instance = UnprocessableMessage.from_json(json)
# print the JSON string representation of the object
print(UnprocessableMessage.to_json())

# convert the object into a dict
unprocessable_message_dict = unprocessable_message_instance.to_dict()
# create an instance of UnprocessableMessage from a dict
unprocessable_message_from_dict = UnprocessableMessage.from_dict(unprocessable_message_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



