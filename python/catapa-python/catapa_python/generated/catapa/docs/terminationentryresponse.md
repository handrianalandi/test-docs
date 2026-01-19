# TerminationEntryResponse

## Properties

| Name                             | Type                                                          | Description | Notes       |
| -------------------------------- | ------------------------------------------------------------- | ----------- | ----------- |
| **id**                           | **str**                                                       |             | \[optional] |
| **termination\_code**            | **str**                                                       |             | \[optional] |
| **effective\_date**              | **str**                                                       |             | \[optional] |
| **payroll\_method**              | **str**                                                       |             | \[optional] |
| **termination\_reason**          | [**TerminationReasonResponse**](terminationreasonresponse.md) |             | \[optional] |
| **bpjs\_manpower\_end\_date**    | **str**                                                       |             | \[optional] |
| **bpjs\_healthcare\_end\_date**  | **str**                                                       |             | \[optional] |
| **pph21\_membership\_end\_date** | **str**                                                       |             | \[optional] |
| **request\_date**                | **str**                                                       |             | \[optional] |
| **service\_period\_by**          | **str**                                                       |             | \[optional] |
| **rehire**                       | **bool**                                                      |             | \[optional] |
| **approval\_status**             | **str**                                                       |             | \[optional] |

## Example

```python
from catapa import TerminationEntryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationEntryResponse from a JSON string
termination_entry_response_instance = TerminationEntryResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationEntryResponse.to_json())

# convert the object into a dict
termination_entry_response_dict = termination_entry_response_instance.to_dict()
# create an instance of TerminationEntryResponse from a dict
termination_entry_response_from_dict = TerminationEntryResponse.from_dict(termination_entry_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
