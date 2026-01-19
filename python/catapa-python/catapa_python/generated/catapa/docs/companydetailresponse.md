# CompanyDetailResponse

## Properties

| Name                         | Type                                                        | Description | Notes       |
| ---------------------------- | ----------------------------------------------------------- | ----------- | ----------- |
| **id**                       | **str**                                                     |             | \[optional] |
| **name**                     | **str**                                                     |             | \[optional] |
| **code**                     | **str**                                                     |             | \[optional] |
| **website**                  | **str**                                                     |             | \[optional] |
| **siup**                     | **str**                                                     |             | \[optional] |
| **tdp**                      | **str**                                                     |             | \[optional] |
| **logo**                     | **str**                                                     |             | \[optional] |
| **logo\_original\_filename** | **str**                                                     |             | \[optional] |
| **logo\_file\_metadata**     | [**LogoFileMetadataResponse**](logofilemetadataresponse.md) |             | \[optional] |
| **time\_zone**               | [**TimeZoneResponse**](timezoneresponse.md)                 |             | \[optional] |
| **email**                    | **str**                                                     |             | \[optional] |
| **company\_superior**        | [**CompanySuperiorResponse**](companysuperiorresponse.md)   |             | \[optional] |
| **location**                 | [**LocationResponse**](locationresponse.md)                 |             | \[optional] |
| **company\_group**           | [**IdCodeNameResponse**](idcodenameresponse.md)             |             | \[optional] |

## Example

```python
from catapa import CompanyDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CompanyDetailResponse from a JSON string
company_detail_response_instance = CompanyDetailResponse.from_json(json)
# print the JSON string representation of the object
print(CompanyDetailResponse.to_json())

# convert the object into a dict
company_detail_response_dict = company_detail_response_instance.to_dict()
# create an instance of CompanyDetailResponse from a dict
company_detail_response_from_dict = CompanyDetailResponse.from_dict(company_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
