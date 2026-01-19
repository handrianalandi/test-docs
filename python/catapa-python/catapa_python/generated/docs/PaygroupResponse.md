# PaygroupResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**cutoff_type** | **str** |  | [optional] 
**cutoff_day_of_week** | **str** |  | [optional] 
**daily_cutoff_date** | **float** |  | [optional] 
**daily_cutoff_base** | **str** |  | [optional] 
**default_paygroup** | **bool** |  | [optional] 
**monthly_cutoff_date** | **float** |  | [optional] 

## Example

```python
from catapa import PaygroupResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PaygroupResponse from a JSON string
paygroup_response_instance = PaygroupResponse.from_json(json)
# print the JSON string representation of the object
print(PaygroupResponse.to_json())

# convert the object into a dict
paygroup_response_dict = paygroup_response_instance.to_dict()
# create an instance of PaygroupResponse from a dict
paygroup_response_from_dict = PaygroupResponse.from_dict(paygroup_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



