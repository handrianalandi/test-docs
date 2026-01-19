# AnomalyDetectionApi

## AnomalyDetectionApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                  | HTTP request                                                                              | Description                |
| --------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | -------------------------- |
| [**read\_anomaly\_suspect**](anomalydetectionapi.md#read_anomaly_suspect)               | **GET** /anomalydetection/v1/anomaly-detection-types/MEDICAL\_CLAIM/anomaly-suspects      | Read Anomaly Suspects      |
| [**read\_anomaly\_suspect\_by\_id**](anomalydetectionapi.md#read_anomaly_suspect_by_id) | **GET** /anomalydetection/v1/anomaly-detection-types/MEDICAL\_CLAIM/anomaly-suspects/{id} | Read Anomaly Suspect By Id |

## **read\_anomaly\_suspect**

> AnomalySuspectListResponse read\_anomaly\_suspect()

Read Anomaly Suspects

#### Search Query | Supported Keys | Supported Operators | Notes | | ----------------------------- | ------------------- | ------------------------------------------------- | | identifier | : | Like |

#### Example

```python
from catapa import Catapa, AnomalyDetectionApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = AnomalyDetectionApi(client)

try:
    # Read Anomaly Suspects
    api_response = api_instance.read_anomaly_suspect()
    print("The response of AnomalyDetectionApi->read_anomaly_suspect:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AnomalyDetectionApi->read_anomaly_suspect: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**AnomalySuspectListResponse**](anomalysuspectlistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](anomalydetectionapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **read\_anomaly\_suspect\_by\_id**

> AnomalySuspectResponse read\_anomaly\_suspect\_by\_id(id)

Read Anomaly Suspect By Id

#### Example

```python
from catapa import Catapa, AnomalyDetectionApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = AnomalyDetectionApi(client)
id = 'id_example' # str | 

try:
    # Read Anomaly Suspect By Id
    api_response = api_instance.read_anomaly_suspect_by_id(id)
    print("The response of AnomalyDetectionApi->read_anomaly_suspect_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AnomalyDetectionApi->read_anomaly_suspect_by_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**AnomalySuspectResponse**](anomalysuspectresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](anomalydetectionapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
