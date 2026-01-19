# BankBranchListResponse

## Properties

| Name                     | Type                                                    | Description | Notes       |
| ------------------------ | ------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                 |             | \[optional] |
| **last**                 | **bool**                                                |             | \[optional] |
| **total\_elements**      | **int**                                                 |             | \[optional] |
| **number\_of\_elements** | **int**                                                 |             | \[optional] |
| **has\_content**         | **bool**                                                |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)             |             | \[optional] |
| **first**                | **bool**                                                |             | \[optional] |
| **size**                 | **int**                                                 |             | \[optional] |
| **number**               | **int**                                                 |             | \[optional] |
| **content**              | [**List\[BankBranchResponse\]**](bankbranchresponse.md) |             | \[optional] |

## Example

```python
from catapa import BankBranchListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BankBranchListResponse from a JSON string
bank_branch_list_response_instance = BankBranchListResponse.from_json(json)
# print the JSON string representation of the object
print(BankBranchListResponse.to_json())

# convert the object into a dict
bank_branch_list_response_dict = bank_branch_list_response_instance.to_dict()
# create an instance of BankBranchListResponse from a dict
bank_branch_list_response_from_dict = BankBranchListResponse.from_dict(bank_branch_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
