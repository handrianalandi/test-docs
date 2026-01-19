# ContactInformationResponse

## Properties

| Name                                 | Type                                                        | Description | Notes       |
| ------------------------------------ | ----------------------------------------------------------- | ----------- | ----------- |
| **id**                               | **str**                                                     |             | \[optional] |
| **mobile\_phone**                    | **str**                                                     |             | \[optional] |
| **email**                            | **str**                                                     | deprecated  | \[optional] |
| **work\_email**                      | **str**                                                     |             | \[optional] |
| **personal\_email**                  | **str**                                                     |             | \[optional] |
| **original\_address**                | **str**                                                     |             | \[optional] |
| **original\_address\_phone\_number** | **str**                                                     |             | \[optional] |
| **original\_address\_detail**        | [**AddressDetailResponse**](addressdetailresponse.md)       |             | \[optional] |
| **facebook**                         | **str**                                                     |             | \[optional] |
| **linked\_in**                       | **str**                                                     |             | \[optional] |
| **effective\_date**                  | **date**                                                    | YYYY-MM-DD  | \[optional] |
| **created\_by**                      | **str**                                                     |             | \[optional] |
| **created\_date**                    | **float**                                                   |             | \[optional] |
| **updated\_by**                      | **str**                                                     |             | \[optional] |
| **updated\_date**                    | **float**                                                   |             | \[optional] |
| **residential\_address**             | [**AddressDetailResponse**](addressdetailresponse.md)       |             | \[optional] |
| **emergency\_contact**               | [**EmergencyContactResponse**](emergencycontactresponse.md) |             | \[optional] |
| **employee**                         | [**EmployeeFullResponse**](employeefullresponse.md)         |             | \[optional] |

## Example

```python
from catapa import ContactInformationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ContactInformationResponse from a JSON string
contact_information_response_instance = ContactInformationResponse.from_json(json)
# print the JSON string representation of the object
print(ContactInformationResponse.to_json())

# convert the object into a dict
contact_information_response_dict = contact_information_response_instance.to_dict()
# create an instance of ContactInformationResponse from a dict
contact_information_response_from_dict = ContactInformationResponse.from_dict(contact_information_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
