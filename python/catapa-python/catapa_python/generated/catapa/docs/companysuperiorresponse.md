# CompanySuperiorResponse

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
| **location**                 | [**LocationResponse**](locationresponse.md)                 |             | \[optional] |

## Example

```python
from catapa import CompanySuperiorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CompanySuperiorResponse from a JSON string
company_superior_response_instance = CompanySuperiorResponse.from_json(json)
# print the JSON string representation of the object
print(CompanySuperiorResponse.to_json())

# convert the object into a dict
company_superior_response_dict = company_superior_response_instance.to_dict()
# create an instance of CompanySuperiorResponse from a dict
company_superior_response_from_dict = CompanySuperiorResponse.from_dict(company_superior_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
