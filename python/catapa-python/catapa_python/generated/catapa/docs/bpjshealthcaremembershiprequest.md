# BpjsHealthcareMembershipRequest

## Properties

| Name                                       | Type                                                                                                                    | Description                                                            | Notes       |
| ------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- | ----------- |
| **additional\_family\_memberships**        | [**List\[BpjsHealthcareMembershipAdditionalFamilyMembership\]**](bpjshealthcaremembershipadditionalfamilymembership.md) |                                                                        |             |
| **bpjs\_healthcare\_provider\_id**         | **str**                                                                                                                 |                                                                        |             |
| **bpjs\_healthcare\_template\_id**         | **str**                                                                                                                 |                                                                        |             |
| **bpjs\_healthcare\_treatment\_class\_id** | **str**                                                                                                                 |                                                                        | \[optional] |
| **dental\_healthcare\_facility**           | **str**                                                                                                                 |                                                                        | \[optional] |
| **first\_level\_healthcare\_facility**     | **str**                                                                                                                 |                                                                        | \[optional] |
| **membership\_number**                     | **str**                                                                                                                 |                                                                        |             |
| **start\_date**                            | **str**                                                                                                                 |                                                                        |             |
| **effective\_date**                        | **str**                                                                                                                 | Effective Date of the BPJS Healthcare Membership default to start date | \[optional] |

## Example

```python
from catapa import BpjsHealthcareMembershipRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcareMembershipRequest from a JSON string
bpjs_healthcare_membership_request_instance = BpjsHealthcareMembershipRequest.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcareMembershipRequest.to_json())

# convert the object into a dict
bpjs_healthcare_membership_request_dict = bpjs_healthcare_membership_request_instance.to_dict()
# create an instance of BpjsHealthcareMembershipRequest from a dict
bpjs_healthcare_membership_request_from_dict = BpjsHealthcareMembershipRequest.from_dict(bpjs_healthcare_membership_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
