# Pph21PolicyResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**link_to_payroll** | **bool** |  | [optional] 
**pph21_form_format_number** | **str** |  | [optional] 
**pph21_method** | **str** |  | [optional] 

## Example

```python
from catapa import Pph21PolicyResponse

# TODO update the JSON string below
json = "{}"
# create an instance of Pph21PolicyResponse from a JSON string
pph21_policy_response_instance = Pph21PolicyResponse.from_json(json)
# print the JSON string representation of the object
print(Pph21PolicyResponse.to_json())

# convert the object into a dict
pph21_policy_response_dict = pph21_policy_response_instance.to_dict()
# create an instance of Pph21PolicyResponse from a dict
pph21_policy_response_from_dict = Pph21PolicyResponse.from_dict(pph21_policy_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



