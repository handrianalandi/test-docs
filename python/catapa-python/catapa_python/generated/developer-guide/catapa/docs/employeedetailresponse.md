# EmployeeDetailResponse

## Properties

| Name                 | Type                                                | Description | Notes       |
| -------------------- | --------------------------------------------------- | ----------- | ----------- |
| **id**               | **str**                                             |             | \[optional] |
| **marital\_status**  | **str**                                             |             | \[optional] |
| **religion**         | [**ReligionResponse**](religionresponse.md)         |             | \[optional] |
| **foreign\_labour**  | **bool**                                            |             | \[optional] |
| **citizenship**      | [**CountryResponse**](countryresponse.md)           |             | \[optional] |
| **name**             | **str**                                             |             | \[optional] |
| **date\_of\_birth**  | **date**                                            | YYYY-MM-DD  | \[optional] |
| **place\_of\_birth** | [**CityResponse**](cityresponse.md)                 |             | \[optional] |
| **gender**           | **str**                                             |             | \[optional] |
| **blood\_type**      | **str**                                             |             | \[optional] |
| **effective\_date**  | **date**                                            | YYYY-MM-DD  | \[optional] |
| **created\_by**      | **str**                                             |             | \[optional] |
| **created\_date**    | **float**                                           |             | \[optional] |
| **updated\_by**      | **str**                                             |             | \[optional] |
| **updated\_date**    | **float**                                           |             | \[optional] |
| **employee**         | [**EmployeeFullResponse**](employeefullresponse.md) |             | \[optional] |

## Example

```python
from catapa import EmployeeDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeDetailResponse from a JSON string
employee_detail_response_instance = EmployeeDetailResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeDetailResponse.to_json())

# convert the object into a dict
employee_detail_response_dict = employee_detail_response_instance.to_dict()
# create an instance of EmployeeDetailResponse from a dict
employee_detail_response_from_dict = EmployeeDetailResponse.from_dict(employee_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
