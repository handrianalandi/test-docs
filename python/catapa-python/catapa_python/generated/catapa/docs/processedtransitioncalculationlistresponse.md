# ProcessedTransitionCalculationListResponse

## Properties

| Name        | Type                                                                                            | Description | Notes       |
| ----------- | ----------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **content** | [**List\[ProcessedTransitionCalculationResponse\]**](processedtransitioncalculationresponse.md) |             | \[optional] |

## Example

```python
from catapa import ProcessedTransitionCalculationListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessedTransitionCalculationListResponse from a JSON string
processed_transition_calculation_list_response_instance = ProcessedTransitionCalculationListResponse.from_json(json)
# print the JSON string representation of the object
print(ProcessedTransitionCalculationListResponse.to_json())

# convert the object into a dict
processed_transition_calculation_list_response_dict = processed_transition_calculation_list_response_instance.to_dict()
# create an instance of ProcessedTransitionCalculationListResponse from a dict
processed_transition_calculation_list_response_from_dict = ProcessedTransitionCalculationListResponse.from_dict(processed_transition_calculation_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
