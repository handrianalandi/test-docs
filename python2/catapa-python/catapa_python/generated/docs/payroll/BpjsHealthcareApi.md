# BpjsHealthcareApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`download_bpjs_healthcare_payment_details_report()`](#download_bpjs_healthcare_payment_details_report) - Download BPJS Healthcare Payment Details Report
- [`download_e_dabu_advance_member_report()`](#download_e_dabu_advance_member_report) - Download E-Dabu Advance Member Report
- [`download_e_dabu_employee_identity_card_member_check_report()`](#download_e_dabu_employee_identity_card_member_check_report) - Download E-Dabu Employee Identity Card Member Check Report
- [`download_e_dabu_new_member_report()`](#download_e_dabu_new_member_report) - Download E-Dabu New Member Report
- [`download_e_dabu_wage_update_report()`](#download_e_dabu_wage_update_report) - Download E-Dabu Wage Update Report
- [`get_bpjs_healthcare_premium_summaries()`](#get_bpjs_healthcare_premium_summaries) - Get BPJS Healthcare Premium Summaries
- [`get_bpjs_healthcare_premium_summary_details()`](#get_bpjs_healthcare_premium_summary_details) - Get BPJS Healthcare Premium Summary Details
- [`get_bpjs_healthcare_providers()`](#get_bpjs_healthcare_providers) - Get BPJS Healthcare Providers
- [`get_bpjs_healthcare_templates()`](#get_bpjs_healthcare_templates) - Get BPJS Healthcare Templates

______________________________________________________________________

## `download_bpjs_healthcare_payment_details_report()`

> **Download BPJS Healthcare Payment Details Report**

### Search Query

| Request Parameter Name   | Description                                 |
| ------------------------ | ------------------------------------------- |
| month                    | Month of the report<br>Value: 1-12.         |
| year                     | Year of the report<br>Value: YYYY, eg: 2021 |
| bpjsHealthcareProviderId | Provider Id                                 |

### Method Signature

```python
def download_bpjs_healthcare_payment_details_report(self) -> None: ...
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
from catapa import Catapa, BpjsHealthcareApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsHealthcareApi(client)

api.download_bpjs_healthcare_payment_details_report()
print("Success!")
```

______________________________________________________________________

## `download_e_dabu_advance_member_report()`

> **Download E-Dabu Advance Member Report**

### Search Query

| Request Parameter Name   | Description                                 |
| ------------------------ | ------------------------------------------- |
| month                    | Month of the report<br>Value: 1-12.         |
| year                     | Year of the report<br>Value: YYYY, eg: 2021 |
| bpjsHealthcareProviderId | Provider Id                                 |

### Method Signature

```python
def download_e_dabu_advance_member_report(self) -> None: ...
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
from catapa import Catapa, BpjsHealthcareApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsHealthcareApi(client)

api.download_e_dabu_advance_member_report()
print("Success!")
```

______________________________________________________________________

## `download_e_dabu_employee_identity_card_member_check_report()`

> **Download E-Dabu Employee Identity Card Member Check Report**

### Search Query

| Request Parameter Name   | Description                                 |
| ------------------------ | ------------------------------------------- |
| month                    | Month of the report<br>Value: 1-12.         |
| year                     | Year of the report<br>Value: YYYY, eg: 2021 |
| bpjsHealthcareProviderId | Provider Id                                 |

### Method Signature

```python
def download_e_dabu_employee_identity_card_member_check_report(self) -> None: ...
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
from catapa import Catapa, BpjsHealthcareApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsHealthcareApi(client)

api.download_e_dabu_employee_identity_card_member_check_report()
print("Success!")
```

______________________________________________________________________

## `download_e_dabu_new_member_report()`

> **Download E-Dabu New Member Report**

### Search Query

| Request Parameter Name   | Description                                 |
| ------------------------ | ------------------------------------------- |
| month                    | Month of the report<br>Value: 1-12.         |
| year                     | Year of the report<br>Value: YYYY, eg: 2021 |
| bpjsHealthcareProviderId | Provider Id                                 |

### Method Signature

```python
def download_e_dabu_new_member_report(self) -> None: ...
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
from catapa import Catapa, BpjsHealthcareApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsHealthcareApi(client)

api.download_e_dabu_new_member_report()
print("Success!")
```

______________________________________________________________________

## `download_e_dabu_wage_update_report()`

> **Download E-Dabu Wage Update Report**

### Search Query

| Request Parameter Name   | Description                                 |
| ------------------------ | ------------------------------------------- |
| month                    | Month of the report<br>Value: 1-12.         |
| year                     | Year of the report<br>Value: YYYY, eg: 2021 |
| bpjsHealthcareProviderId | Provider Id. UUID4                          |
| paygroupId               | Paygroup id from payroll. UUID4             |

### Method Signature

```python
def download_e_dabu_wage_update_report(self) -> None: ...
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
from catapa import Catapa, BpjsHealthcareApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsHealthcareApi(client)

api.download_e_dabu_wage_update_report()
print("Success!")
```

______________________________________________________________________

## `get_bpjs_healthcare_premium_summaries()`

> **Get BPJS Healthcare Premium Summaries**

### Search Query

| Supported Keys       | Supported Operators | Notes                                                                                       |
| -------------------- | ------------------- | ------------------------------------------------------------------------------------------- |
| employeeName         | :                   | Like Operator                                                                               |
| identificationNumber | :                   | Like Operator                                                                               |
| cutoffEndDate        | :<br>><br>\<        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |

### Method Signature

```python
def get_bpjs_healthcare_premium_summaries(
    self,
) -> BpjsHealthcarePremiumSummaryPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`BpjsHealthcarePremiumSummaryPageResponse`**](../models/BpjsHealthcarePremiumSummaryPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BpjsHealthcareApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsHealthcareApi(client)

response = api.get_bpjs_healthcare_premium_summaries()

# Access response data
print(response)
```

______________________________________________________________________

## `get_bpjs_healthcare_premium_summary_details()`

> **Get BPJS Healthcare Premium Summary Details**

### Method Signature

```python
def get_bpjs_healthcare_premium_summary_details(
    self, id: str
) -> BpjsHealthcarePremiumDetailsResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`BpjsHealthcarePremiumDetailsResponse`**](../models/BpjsHealthcarePremiumDetailsResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BpjsHealthcareApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsHealthcareApi(client)

response = api.get_bpjs_healthcare_premium_summary_details("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_bpjs_healthcare_providers()`

> **Get BPJS Healthcare Providers**

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
def get_bpjs_healthcare_providers(self) -> BpjsHealthcareProviderPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`BpjsHealthcareProviderPageResponse`**](../models/BpjsHealthcareProviderPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BpjsHealthcareApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsHealthcareApi(client)

response = api.get_bpjs_healthcare_providers()

# Access response data
print(response)
```

______________________________________________________________________

## `get_bpjs_healthcare_templates()`

> **Get BPJS Healthcare Templates**

### Search Query

| Supported Keys | Supported Operators | Notes                                                                               |
| -------------- | ------------------- | ----------------------------------------------------------------------------------- |
| code           | :                   | Like Operator                                                                       |
| name           | :                   | Like Operator                                                                       |
| salaryType     | :                   | Equal Operator<br>Enum, available values:<br>[BY_PRORATED_SALARY, BY_SALARY_DECREE] |
| linkToPayroll  | :                   | Equal Operator.<br>Boolean                                                          |

### Method Signature

```python
def get_bpjs_healthcare_templates(self) -> BpjsHealthcareTemplatePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`BpjsHealthcareTemplatePageResponse`**](../models/BpjsHealthcareTemplatePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BpjsHealthcareApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BpjsHealthcareApi(client)

response = api.get_bpjs_healthcare_templates()

# Access response data
print(response)
```

______________________________________________________________________
