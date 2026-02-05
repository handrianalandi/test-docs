# AnalyticsApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`create_analytics_chart()`](#create_analytics_chart) - Create Analytics Chart
- [`get_analytics_chart()`](#get_analytics_chart) - Get Analytics Chart Data
- [`get_analytics_data_by_chart_id_and_current_user()`](#get_analytics_data_by_chart_id_and_current_user) - Get Analytics Data by Chart ID and Current User

______________________________________________________________________

## `create_analytics_chart()`

> **Create Analytics Chart**

### Method Signature

```python
def create_analytics_chart(
    self, analytics_chart_request: AnalyticsChartRequest = None
) -> AnalyticsChartResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description |
| :------------------------ | :------------------------------------------------------------ | :------: | :---------- |
| `analytics_chart_request` | [`AnalyticsChartRequest`](../models/AnalyticsChartRequest.md) |    ❌    |             |

### Returns

[**`AnalyticsChartResponse`**](../models/AnalyticsChartResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, AnalyticsApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = AnalyticsApi(client)

response = api.create_analytics_chart(
    analytics_chart_request={
        "title": "Gender Distribution",
        "size": 1,
        "options": "options",
        "chartType": "BAR_VERTICAL_GROUPED_CHART",
        "aggregationType": "COUNT",
        "tableId": "1800f417-e4cb-4a0b-bb22-0913371158fd",
        "yaxisTitle": "Count Employee",
        "ycolumnId": "35e73525-5438-4682-92dd-d5d74f1fd43a",
        "ychartTableRelations": [
            {
                "chartTableRelationId": "a4b139f7-4841-476c-ad4f-fcea3cf32141",
                "sequence": 1,
            }
        ],
        "xaxisTitle": "Gender",
        "xcolumnId": "c905ab74-188b-40ec-bbba-42cd3e8faed9",
        "xchartTableRelations": [
            {
                "chartTableRelationId": "c3790cc2-2a20-43a4-852a-9b06adae29a7",
                "sequence": 1,
            }
        ],
        "seriesAxisTitle": null,
        "seriesColumnId": null,
        "seriesChartTableRelations": [
            {
                "chartTableRelationId": "ce1a6866-69be-480c-964d-29fc09548e1e",
                "sequence": 1,
            }
        ],
        "colorScheme": {"id": "c905ab74-188b-40ec-bbba-42cd3e8faed9"},
        "dataTrusteeEnabled": true,
        "maxItems": 10,
        "sortType": "ALPHABETICAL_ASC",
        "chartFilters": [
            {
                "chartFilterType": "DYNAMIC",
                "duration": 3,
                "timeUnit": "MONTH",
                "timeFrame": "LAST",
                "analyticsColumnId": "d905ab74-188b-40ec-bbba-42cd3e8faed9",
            },
            {
                "chartFilterType": "RANGE",
                "startDate": "2022-01-01",
                "endDate": "2022-03-01",
                "analyticsColumnId": "a905ab74-188b-40ec-bbba-42cd3e8faed9",
            },
            {
                "chartFilterType": "VALUE",
                "values": ["ATTENDANCE_PENALTY"],
                "analyticsColumnId": "a115ab74-188b-40ec-bbba-42cd3e8faed9",
            },
        ],
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_analytics_chart()`

> **Get Analytics Chart Data**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| title          | :                   | Like operator |

### Method Signature

```python
def get_analytics_chart(self) -> AnalyticsChartPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`AnalyticsChartPageResponse`**](../models/AnalyticsChartPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, AnalyticsApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = AnalyticsApi(client)

response = api.get_analytics_chart()

# Access response data
print(response)
```

______________________________________________________________________

## `get_analytics_data_by_chart_id_and_current_user()`

> **Get Analytics Data by Chart ID and Current User**

Get Analytics Data by Chart ID and Current User

### Method Signature

```python
def get_analytics_data_by_chart_id_and_current_user(
    self, tenant: str, id: str
) -> AnalyticsChartDataResponse: ...
```

### Parameters

| Name     | Type  | Required | Description |
| :------- | :---- | :------: | :---------- |
| `tenant` | `str` |    ✅    |             |
| `id`     | `str` |    ✅    |             |

### Returns

[**`AnalyticsChartDataResponse`**](../models/AnalyticsChartDataResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, AnalyticsApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = AnalyticsApi(client)

response = api.get_analytics_data_by_chart_id_and_current_user(
    "tenant_example", "id_example"
)

# Access response data
print(response)
```

______________________________________________________________________
