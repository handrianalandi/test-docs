# PayslipLayoutListResponse

## Properties

| Name        | Type                                                          | Description | Notes       |
| ----------- | ------------------------------------------------------------- | ----------- | ----------- |
| **content** | [**List\[PayslipLayoutResponse\]**](paysliplayoutresponse.md) |             | \[optional] |

## Example

```python
from catapa import PayslipLayoutListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayslipLayoutListResponse from a JSON string
payslip_layout_list_response_instance = PayslipLayoutListResponse.from_json(json)
# print the JSON string representation of the object
print(PayslipLayoutListResponse.to_json())

# convert the object into a dict
payslip_layout_list_response_dict = payslip_layout_list_response_instance.to_dict()
# create an instance of PayslipLayoutListResponse from a dict
payslip_layout_list_response_from_dict = PayslipLayoutListResponse.from_dict(payslip_layout_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
