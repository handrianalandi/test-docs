# FamilyApprovalRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**gender** | **str** |  | 
**date_of_birth** | **date** | YYYY-MM-DD | [optional] 
**identity_card_number** | **str** |  | [optional] 
**family_relation** | [**IdRequest**](IdRequest.md) |  | 
**place_of_birth** | [**PlaceOfBirthRequest**](PlaceOfBirthRequest.md) |  | [optional] 
**alive** | **bool** |  | [optional] [default to True]
**date_of_death** | **date** | If left &lt;b&gt;null&lt;/b&gt; and the individual is marked as &lt;b&gt;not alive&lt;/b&gt;, the system will automatically set the date of death to the default value of &#x60;December 31, 9999&#x60; | [optional] 
**marital_status** | **str** |  | [optional] 
**marriage_date** | **date** | YYYY-MM-DD | [optional] 
**religion** | **object** |  | [optional] 
**education_level** | **object** |  | [optional] 
**job** | **str** | Alphanumeric with space, e.g. &#x60;Software Engineer 1&#x60; | [optional] 
**mobile_phone** | **str** | e.g. &#x60;+6281234567890&#x60; | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from catapa import FamilyApprovalRequest

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyApprovalRequest from a JSON string
family_approval_request_instance = FamilyApprovalRequest.from_json(json)
# print the JSON string representation of the object
print(FamilyApprovalRequest.to_json())

# convert the object into a dict
family_approval_request_dict = family_approval_request_instance.to_dict()
# create an instance of FamilyApprovalRequest from a dict
family_approval_request_from_dict = FamilyApprovalRequest.from_dict(family_approval_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



