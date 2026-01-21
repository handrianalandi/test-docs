# AmountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **float** |  | 

## Example

```python
from catapa import AmountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AmountRequest from a JSON string
amount_request_instance = AmountRequest.from_json(json)
# print the JSON string representation of the object
print(AmountRequest.to_json())

# convert the object into a dict
amount_request_dict = amount_request_instance.to_dict()
# create an instance of AmountRequest from a dict
amount_request_from_dict = AmountRequest.from_dict(amount_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



