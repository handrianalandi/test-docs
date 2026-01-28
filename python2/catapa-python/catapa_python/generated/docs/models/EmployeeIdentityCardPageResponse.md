# EmployeeIdentityCardPageResponse


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
**content** | [**List[EmployeeIdentityCardResponse]**](EmployeeIdentityCardResponse.md) |  | 

## Example

```python
from catapa import EmployeeIdentityCardPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeIdentityCardPageResponse from a JSON string
employee_identity_card_page_response_instance = EmployeeIdentityCardPageResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeIdentityCardPageResponse.to_json())

# convert the object into a dict
employee_identity_card_page_response_dict = employee_identity_card_page_response_instance.to_dict()
# create an instance of EmployeeIdentityCardPageResponse from a dict
employee_identity_card_page_response_from_dict = EmployeeIdentityCardPageResponse.from_dict(employee_identity_card_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



