# PositionHistoryResponse

## Properties

| Name                | Type                                                                              | Description | Notes       |
| ------------------- | --------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**              | **str**                                                                           |             | \[optional] |
| **code**            | **str**                                                                           |             | \[optional] |
| **name**            | **str**                                                                           |             | \[optional] |
| **position**        | [**IdCodeNameResponse**](idcodenameresponse.md)                                   |             | \[optional] |
| **organization**    | [**PositionHistoryOrganizationResponse**](positionhistoryorganizationresponse.md) |             | \[optional] |
| **effective\_date** | **str**                                                                           |             | \[optional] |
| **end\_date**       | **str**                                                                           |             | \[optional] |

## Example

```python
from catapa import PositionHistoryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionHistoryResponse from a JSON string
position_history_response_instance = PositionHistoryResponse.from_json(json)
# print the JSON string representation of the object
print(PositionHistoryResponse.to_json())

# convert the object into a dict
position_history_response_dict = position_history_response_instance.to_dict()
# create an instance of PositionHistoryResponse from a dict
position_history_response_from_dict = PositionHistoryResponse.from_dict(position_history_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
