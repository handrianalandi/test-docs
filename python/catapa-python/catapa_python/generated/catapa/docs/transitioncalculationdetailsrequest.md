# TransitionCalculationDetailsRequest

## Properties

| Name               | Type                                                                                                  | Description | Notes |
| ------------------ | ----------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **transition\_id** | **str**                                                                                               |             |       |
| **details**        | [**List\[TransitionCalculationDetailsAmountRequest\]**](transitioncalculationdetailsamountrequest.md) |             |       |

## Example

```python
from catapa import TransitionCalculationDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TransitionCalculationDetailsRequest from a JSON string
transition_calculation_details_request_instance = TransitionCalculationDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(TransitionCalculationDetailsRequest.to_json())

# convert the object into a dict
transition_calculation_details_request_dict = transition_calculation_details_request_instance.to_dict()
# create an instance of TransitionCalculationDetailsRequest from a dict
transition_calculation_details_request_from_dict = TransitionCalculationDetailsRequest.from_dict(transition_calculation_details_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
