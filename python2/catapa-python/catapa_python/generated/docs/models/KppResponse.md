# KppResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | KPP unique identifier | 
**code** | **str** | KPP code | 
**name** | **str** | KPP name | 
**address** | **str** | KPP address | 
**responsible_person_name** | **str** | Name of the responsible person | 
**responsible_person_npwp** | **str** | NPWP of the responsible person | 
**responsible_person_job_title** | **str** | Job title of the responsible person | 
**kpp_status** | **str** | Status of the KPP | 

## Example

```python
from catapa import KppResponse

# TODO update the JSON string below
json = "{}"
# create an instance of KppResponse from a JSON string
kpp_response_instance = KppResponse.from_json(json)
# print the JSON string representation of the object
print(KppResponse.to_json())

# convert the object into a dict
kpp_response_dict = kpp_response_instance.to_dict()
# create an instance of KppResponse from a dict
kpp_response_from_dict = KppResponse.from_dict(kpp_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



