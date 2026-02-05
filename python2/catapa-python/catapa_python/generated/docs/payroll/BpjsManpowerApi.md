# BpjsManpowerApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`download_bpjs_manpower_payment_details_report()`](#download_bpjs_manpower_payment_details_report) - Download BPJS Manpower Payment Details Report
- [`download_pension_debt_report()`](#download_pension_debt_report) - Download Pension Debt Report
- [`download_sipp_advance_member_report()`](#download_sipp_advance_member_report) - Download SIPP Advance Member Report
- [`download_sipp_new_member_report()`](#download_sipp_new_member_report) - Download SIPP New Member Report
- [`download_sipp_terminated_member_report()`](#download_sipp_terminated_member_report) - Download SIPP Terminated Member Report
- [`download_sipp_wage_update_report()`](#download_sipp_wage_update_report) - Download SIPP Wage Update Report
- [`get_bpjs_manpower_premium_summaries()`](#get_bpjs_manpower_premium_summaries) - Get BPJS Manpower Premium Summaries
- [`get_bpjs_manpower_premium_summary_details()`](#get_bpjs_manpower_premium_summary_details) - Get BPJS Manpower Premium Summary Details
- [`get_bpjs_manpower_providers()`](#get_bpjs_manpower_providers) - Get BPJS Manpower Providers
- [`get_bpjs_manpower_templates()`](#get_bpjs_manpower_templates) - Get BPJS Manpower Templates

______________________________________________________________________

## `download_bpjs_manpower_payment_details_report()`

> **Download BPJS Manpower Payment Details Report**

### Search Query

| Request Parameter Name | Description                                      |
| ---------------------- | ------------------------------------------------ |
| month                  | Month of the report<br>Value: 1-12.              |
| year                   | Year of the report<br>Value: YYYY, example: 2021 |
| bpjsManpowerProviderId | Provider Id                                      |

### Method Signature

```python
def download_bpjs_manpower_payment_details_report(self) -> None: ...
```

### Parameters

This method does not require any parameters.

### Returns

`None`

### Response Codes

| Status  | Description                 |
| :------ | :-------------------------- |
| **200** | OK - File download response |
| **400** | Bad Request                 |

### Example Usage

```python
from catapa import Catapa, BpjsManpowerApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsManpowerApi(client)

api.download_bpjs_manpower_payment_details_report()
print("Success!")
```

______________________________________________________________________

## `download_pension_debt_report()`

> **Download Pension Debt Report**

To comply with [PP No. 49 Tahun
2020](<https://peraturan.bpk.go.id/Home/Details/144869/pp-no-49-tahun-2020#:~:text=PP%20No.%2049%20Tahun%202020,19)%20%5BJDIH%20BPK%20RI%5D&text=LN.2020%2FNo.199,go.id%20%3A%2020%20hlm.>)
for “Jaminan Pensiun”

### Search Query

| Request Parameter Name | Description        |
| ---------------------- | ------------------ |
| bpjsManpowerProviderId | Provider Id. UUID4 |

### Method Signature

```python
def download_pension_debt_report(self) -> None: ...
```

### Parameters

This method does not require any parameters.

### Returns

`None`

### Response Codes

| Status  | Description                 |
| :------ | :-------------------------- |
| **200** | OK - File download response |
| **400** | Bad Request                 |

### Example Usage

```python
from catapa import Catapa, BpjsManpowerApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsManpowerApi(client)

api.download_pension_debt_report()
print("Success!")
```

______________________________________________________________________

## `download_sipp_advance_member_report()`

> **Download SIPP Advance Member Report**

### Search Query

| Request Parameter Name | Description                                      |
| ---------------------- | ------------------------------------------------ |
| month                  | Month of the report<br>Value: 1-12.              |
| year                   | Year of the report<br>Value: YYYY, example: 2021 |
| bpjsManpowerProviderId | Provider Id                                      |

### Method Signature

```python
def download_sipp_advance_member_report(self) -> None: ...
```

### Parameters

This method does not require any parameters.

### Returns

`None`

### Response Codes

| Status  | Description                 |
| :------ | :-------------------------- |
| **200** | OK - File download response |
| **400** | Bad Request                 |

### Example Usage

```python
from catapa import Catapa, BpjsManpowerApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsManpowerApi(client)

api.download_sipp_advance_member_report()
print("Success!")
```

______________________________________________________________________

## `download_sipp_new_member_report()`

> **Download SIPP New Member Report**

### Search Query

| Request Parameter Name | Description                                      |
| ---------------------- | ------------------------------------------------ |
| month                  | Month of the report<br>Value: 1-12.              |
| year                   | Year of the report<br>Value: YYYY, example: 2021 |
| bpjsManpowerProviderId | Provider Id                                      |

### Method Signature

```python
def download_sipp_new_member_report(self) -> None: ...
```

### Parameters

This method does not require any parameters.

### Returns

`None`

### Response Codes

| Status  | Description                 |
| :------ | :-------------------------- |
| **200** | OK - File download response |
| **400** | Bad Request                 |

### Example Usage

```python
from catapa import Catapa, BpjsManpowerApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsManpowerApi(client)

api.download_sipp_new_member_report()
print("Success!")
```

______________________________________________________________________

## `download_sipp_terminated_member_report()`

> **Download SIPP Terminated Member Report**

### Search Query

| Request Parameter Name | Description                                      |
| ---------------------- | ------------------------------------------------ |
| month                  | Month of the report<br>Value: 1-12.              |
| year                   | Year of the report<br>Value: YYYY, example: 2021 |
| bpjsManpowerProviderId | Provider Id                                      |

### Method Signature

```python
def download_sipp_terminated_member_report(self) -> None: ...
```

### Parameters

This method does not require any parameters.

### Returns

`None`

### Response Codes

| Status  | Description                 |
| :------ | :-------------------------- |
| **200** | OK - File download response |
| **400** | Bad Request                 |

### Example Usage

```python
from catapa import Catapa, BpjsManpowerApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsManpowerApi(client)

api.download_sipp_terminated_member_report()
print("Success!")
```

______________________________________________________________________

## `download_sipp_wage_update_report()`

> **Download SIPP Wage Update Report**

### Search Query

| Request Parameter Name | Description                                      |
| ---------------------- | ------------------------------------------------ |
| month                  | Month of the report<br>Value: 1-12.              |
| year                   | Year of the report<br>Value: YYYY, example: 2021 |
| bpjsManpowerProviderId | Provider Id. UUID4                               |
| paygroupId             | Provider Id from payroll. UUID4                  |

### Method Signature

```python
def download_sipp_wage_update_report(self) -> None: ...
```

### Parameters

This method does not require any parameters.

### Returns

`None`

### Response Codes

| Status  | Description                 |
| :------ | :-------------------------- |
| **200** | OK - File download response |
| **400** | Bad Request                 |

### Example Usage

```python
from catapa import Catapa, BpjsManpowerApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsManpowerApi(client)

api.download_sipp_wage_update_report()
print("Success!")
```

______________________________________________________________________

## `get_bpjs_manpower_premium_summaries()`

> **Get BPJS Manpower Premium Summaries**

### Search Query

| Supported Keys       | Supported Operators | Notes                                                                                       |
| -------------------- | ------------------- | ------------------------------------------------------------------------------------------- |
| employeeName         | :                   | Like Operator                                                                               |
| identificationNumber | :                   | Like Operator                                                                               |
| cutoffEndDate        | :<br>><br>\<        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |

### Method Signature

```python
def get_bpjs_manpower_premium_summaries(
    self,
) -> BpjsManpowerPremiumSummaryPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`BpjsManpowerPremiumSummaryPageResponse`**](../models/BpjsManpowerPremiumSummaryPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BpjsManpowerApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsManpowerApi(client)

response = api.get_bpjs_manpower_premium_summaries()

# Access response data
print(response)
```

______________________________________________________________________

## `get_bpjs_manpower_premium_summary_details()`

> **Get BPJS Manpower Premium Summary Details**

### Method Signature

```python
def get_bpjs_manpower_premium_summary_details(
    self, id: str
) -> BpjsManpowerPremiumDetailsResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`BpjsManpowerPremiumDetailsResponse`**](../models/BpjsManpowerPremiumDetailsResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BpjsManpowerApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsManpowerApi(client)

response = api.get_bpjs_manpower_premium_summary_details("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_bpjs_manpower_providers()`

> **Get BPJS Manpower Providers**

### Search Query

| Supported Keys          | Supported Operators | Notes         |
| ----------------------- | ------------------- | ------------- |
| name                    | :                   | Like Operator |
| code                    | :                   | Like Operator |
| address                 | :                   | Like Operator |
| registrationNumber      | :                   | Like Operator |
| reportSignatoryName     | :                   | Like Operator |
| reportSignatoryJobTitle | :                   | Like Operator |

### Method Signature

```python
def get_bpjs_manpower_providers(self) -> BpjsManpowerProviderPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`BpjsManpowerProviderPageResponse`**](../models/BpjsManpowerProviderPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BpjsManpowerApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsManpowerApi(client)

response = api.get_bpjs_manpower_providers()

# Access response data
print(response)
```

______________________________________________________________________

## `get_bpjs_manpower_templates()`

> **Get BPJS Manpower Templates**

### Search Query

| Supported Keys | Supported Operators | Notes                                                                               |
| -------------- | ------------------- | ----------------------------------------------------------------------------------- |
| code           | :                   | Like Operator                                                                       |
| name           | :                   | Like Operator                                                                       |
| salaryType     | :                   | Equal Operator<br>Enum, available values:<br>[BY_PRORATED_SALARY, BY_SALARY_DECREE] |
| linkToPayroll  | :                   | Equal Operator.<br>Boolean                                                          |

### Method Signature

```python
def get_bpjs_manpower_templates(self) -> BpjsManpowerTemplatePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`BpjsManpowerTemplatePageResponse`**](../models/BpjsManpowerTemplatePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BpjsManpowerApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsManpowerApi(client)

response = api.get_bpjs_manpower_templates()

# Access response data
print(response)
```

______________________________________________________________________
