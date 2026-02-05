# AnomalyDetectionApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`read_anomaly_suspect()`](#read_anomaly_suspect) - Read Anomaly Suspects
- [`read_anomaly_suspect_by_id()`](#read_anomaly_suspect_by_id) - Read Anomaly Suspect By Id

______________________________________________________________________

## `read_anomaly_suspect()`

> **Read Anomaly Suspects**

### Search Query

| Supported Keys | Supported Operators | Notes |
| -------------- | ------------------- | ----- |
| identifier     | :                   | Like  |

### Method Signature

```python
def read_anomaly_suspect(self) -> AnomalySuspectPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`AnomalySuspectPageResponse`**](../models/AnomalySuspectPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, AnomalyDetectionApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = AnomalyDetectionApi(client)

response = api.read_anomaly_suspect()

# Access response data
print(response)
```

______________________________________________________________________

## `read_anomaly_suspect_by_id()`

> **Read Anomaly Suspect By Id**

### Method Signature

```python
def read_anomaly_suspect_by_id(self, id: str) -> AnomalySuspectResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`AnomalySuspectResponse`**](../models/AnomalySuspectResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, AnomalyDetectionApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = AnomalyDetectionApi(client)

response = api.read_anomaly_suspect_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________
