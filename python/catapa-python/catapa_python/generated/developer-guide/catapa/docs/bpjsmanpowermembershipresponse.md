# BpjsManpowerMembershipResponse

## Properties

| Name                         | Type                                                                | Description                        | Notes       |
| ---------------------------- | ------------------------------------------------------------------- | ---------------------------------- | ----------- |
| **id**                       | **str**                                                             | ID of the BPJS Manpower Membership | \[optional] |
| **membership\_number**       | **str**                                                             |                                    | \[optional] |
| **start\_date**              | **str**                                                             |                                    | \[optional] |
| **end\_date**                | **str**                                                             |                                    | \[optional] |
| **effective\_date**          | **str**                                                             |                                    | \[optional] |
| **pension\_end**             | **str**                                                             |                                    | \[optional] |
| **bpjs\_manpower\_provider** | [**BpjsManpowerProviderResponse**](bpjsmanpowerproviderresponse.md) |                                    | \[optional] |
| **bpjs\_manpower\_template** | [**BpjsManpowerTemplateResponse**](bpjsmanpowertemplateresponse.md) |                                    | \[optional] |

## Example

```python
from catapa import BpjsManpowerMembershipResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerMembershipResponse from a JSON string
bpjs_manpower_membership_response_instance = BpjsManpowerMembershipResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerMembershipResponse.to_json())

# convert the object into a dict
bpjs_manpower_membership_response_dict = bpjs_manpower_membership_response_instance.to_dict()
# create an instance of BpjsManpowerMembershipResponse from a dict
bpjs_manpower_membership_response_from_dict = BpjsManpowerMembershipResponse.from_dict(bpjs_manpower_membership_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
