# PaygroupPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[PaygroupResponse]**](PaygroupResponse.md) |  | 

## Example

```python
from catapa import PaygroupPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PaygroupPageResponse from a JSON string
paygroup_page_response_instance = PaygroupPageResponse.from_json(json)
# print the JSON string representation of the object
print(PaygroupPageResponse.to_json())

# convert the object into a dict
paygroup_page_response_dict = paygroup_page_response_instance.to_dict()
# create an instance of PaygroupPageResponse from a dict
paygroup_page_response_from_dict = PaygroupPageResponse.from_dict(paygroup_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



