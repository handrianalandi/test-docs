# WidgetsApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_widgets_by_current_user()`](#get_widgets_by_current_user) - Get Widgets by Current User

______________________________________________________________________

## `get_widgets_by_current_user()`

> **Get Widgets by Current User**

### Search Query

| Supported Keys | Supported Operators | Notes          |
| -------------- | ------------------- | -------------- |
| widgetType     | :                   | Equal operator |

### Method Signature

```python
def get_widgets_by_current_user(self) -> WidgetPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`WidgetPageResponse`**](../models/WidgetPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, WidgetsApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = WidgetsApi(client)

response = api.get_widgets_by_current_user()

# Access response data
print(response)
```

______________________________________________________________________
