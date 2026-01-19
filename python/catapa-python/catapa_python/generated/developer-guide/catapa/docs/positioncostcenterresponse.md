# PositionCostCenterResponse

## Properties

| Name                | Type                                            | Description | Notes       |
| ------------------- | ----------------------------------------------- | ----------- | ----------- |
| **id**              | **str**                                         |             | \[optional] |
| **effective\_date** | **str**                                         |             | \[optional] |
| **cost\_center**    | [**IdCodeNameResponse**](idcodenameresponse.md) |             | \[optional] |
| **position**        | [**IdCodeNameResponse**](idcodenameresponse.md) |             | \[optional] |
| **created\_by**     | **str**                                         |             | \[optional] |
| **created\_date**   | **float**                                       |             | \[optional] |
| **updated\_by**     | **str**                                         |             | \[optional] |
| **updated\_date**   | **float**                                       |             | \[optional] |

## Example

```python
from catapa import PositionCostCenterResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionCostCenterResponse from a JSON string
position_cost_center_response_instance = PositionCostCenterResponse.from_json(json)
# print the JSON string representation of the object
print(PositionCostCenterResponse.to_json())

# convert the object into a dict
position_cost_center_response_dict = position_cost_center_response_instance.to_dict()
# create an instance of PositionCostCenterResponse from a dict
position_cost_center_response_from_dict = PositionCostCenterResponse.from_dict(position_cost_center_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
