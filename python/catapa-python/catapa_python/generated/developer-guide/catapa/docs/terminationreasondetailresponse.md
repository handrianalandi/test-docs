# TerminationReasonDetailResponse

## Properties

| Name                                    | Type                                                                                  | Description                    | Notes       |
| --------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------ | ----------- |
| **id**                                  | **str**                                                                               |                                | \[optional] |
| **name**                                | **str**                                                                               |                                | \[optional] |
| **termination\_pph21\_reason**          | **str**                                                                               | Use taxReason instead          | \[optional] |
| **termination\_bpjs\_manpower\_reason** | **str**                                                                               | Use bpjsManpowerReason instead | \[optional] |
| **termination\_reason\_category**       | **str**                                                                               | Use reasonCategory instead     | \[optional] |
| **tax\_reason**                         | [**TerminationTaxReasonResponse**](terminationtaxreasonresponse.md)                   |                                | \[optional] |
| **bpjs\_manpower\_reason**              | [**TerminationBPJSManpowerReasonResponse**](terminationbpjsmanpowerreasonresponse.md) |                                | \[optional] |
| **reason\_category**                    | [**TerminationReasonCategoryResponse**](terminationreasoncategoryresponse.md)         |                                | \[optional] |
| **severance**                           | **bool**                                                                              |                                | \[optional] |

## Example

```python
from catapa import TerminationReasonDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationReasonDetailResponse from a JSON string
termination_reason_detail_response_instance = TerminationReasonDetailResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationReasonDetailResponse.to_json())

# convert the object into a dict
termination_reason_detail_response_dict = termination_reason_detail_response_instance.to_dict()
# create an instance of TerminationReasonDetailResponse from a dict
termination_reason_detail_response_from_dict = TerminationReasonDetailResponse.from_dict(termination_reason_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
