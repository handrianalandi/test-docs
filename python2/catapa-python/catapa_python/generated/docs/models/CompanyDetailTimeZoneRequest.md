# CompanyDetailTimeZoneRequest

Please refer to [Wikipedia](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). The `code` refers to the `TZ identifier` column, and the `offset` corresponds to the `UTC offset` > `SDT` column.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**offset** | **str** | The &#x60;offset&#x60; must be between &#x60;-18&#x60; and &#x60;+18&#x60; hours, e.g. &#x60;+07:00&#x60; | 

## Example

```python
from catapa import CompanyDetailTimeZoneRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CompanyDetailTimeZoneRequest from a JSON string
company_detail_time_zone_request_instance = CompanyDetailTimeZoneRequest.from_json(json)
# print the JSON string representation of the object
print(CompanyDetailTimeZoneRequest.to_json())

# convert the object into a dict
company_detail_time_zone_request_dict = company_detail_time_zone_request_instance.to_dict()
# create an instance of CompanyDetailTimeZoneRequest from a dict
company_detail_time_zone_request_from_dict = CompanyDetailTimeZoneRequest.from_dict(company_detail_time_zone_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



