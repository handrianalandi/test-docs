# PayslipDownloadRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_date** | **date** |  | 
**type** | **str** |  | 

## Example

```python
from catapa import PayslipDownloadRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PayslipDownloadRequest from a JSON string
payslip_download_request_instance = PayslipDownloadRequest.from_json(json)
# print the JSON string representation of the object
print(PayslipDownloadRequest.to_json())

# convert the object into a dict
payslip_download_request_dict = payslip_download_request_instance.to_dict()
# create an instance of PayslipDownloadRequest from a dict
payslip_download_request_from_dict = PayslipDownloadRequest.from_dict(payslip_download_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



