# TaxApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`create_tax_calculation()`](#create_tax_calculation) - Create Tax Calculation
- [`download1721_a1_report()`](#download1721_a1_report) - Download 1721 A1 Report
- [`download1721_vi_report()`](#download1721_vi_report) - Download 1721 VI Report
- [`download1721_vi_tax_report()`](#download1721_vi_tax_report) - Download 1721 VI Report
- [`download1721_vii_report()`](#download1721_vii_report) - Download 1721 VII Report
- [`download1721_vii_tax_report()`](#download1721_vii_tax_report) - Download 1721 VII Report
- [`download1721_viii_report()`](#download1721_viii_report) - Download 1721 VIII Report
- [`get1721_a1_reports()`](#get1721_a1_reports) - Get 1721 A1 Reports
- [`get1721_vi_reports()`](#get1721_vi_reports) - Get 1721 VI Reports
- [`get1721_vi_tax_reports()`](#get1721_vi_tax_reports) - Get 1721 VI Reports
- [`get1721_vii_reports()`](#get1721_vii_reports) - Get 1721 VII Reports
- [`get1721_vii_tax_reports()`](#get1721_vii_tax_reports) - Get 1721 VII Reports
- [`get1721_viii_reports()`](#get1721_viii_reports) - Get 1721 VIII Reports
- [`get_detailed1721_vi_reports()`](#get_detailed1721_vi_reports) - Get Detailed 1721 VI Reports
- [`get_detailed1721_vi_tax_reports()`](#get_detailed1721_vi_tax_reports) - Get Detailed 1721 VI Reports
- [`get_kpp()`](#get_kpp) - Get Kpp
- [`get_monthly_tax_report()`](#get_monthly_tax_report) - Get Monthly Tax Report
- [`get_pph21_policy()`](#get_pph21_policy) - Get Pph21 Policy
- [`get_ptkp_categories()`](#get_ptkp_categories) - Get Ptkp Categories
- [`get_tax_calculations()`](#get_tax_calculations) - Get Tax Calculations
- [`get_tax_calculations_by_external_id()`](#get_tax_calculations_by_external_id) - Get Tax Calculations By External Id
- [`get_tax_calculations_by_id()`](#get_tax_calculations_by_id) - Get Tax Calculations By Id
- [`monthly_tax_detail_find_all()`](#monthly_tax_detail_find_all) - GET Monthly Tax Detail
- [`simulate_annual_tax()`](#simulate_annual_tax) - Simulate annual tax calculation
- [`simulate_monthly_tax()`](#simulate_monthly_tax) - Simulate monthly tax calculation
- [`undo_tax_calculation_by_id()`](#undo_tax_calculation_by_id) - Undo Tax Calculation By Id
- [`undo_tax_calculations_by_external_id()`](#undo_tax_calculations_by_external_id) - Undo Tax Calculations By External Id

______________________________________________________________________

## `create_tax_calculation()`

> **Create Tax Calculation**

### Method Signature

```python
def create_tax_calculation(
    self, tax_calculation_request: TaxCalculationRequest = None
) -> TaxCalculationDetailResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description |
| :------------------------ | :------------------------------------------------------------ | :------: | :---------- |
| `tax_calculation_request` | [`TaxCalculationRequest`](../models/TaxCalculationRequest.md) |    ❌    |             |

### Returns

[**`TaxCalculationDetailResponse`**](../models/TaxCalculationDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.create_tax_calculation(
    tax_calculation_request={
        "employeeId": "d2ea6f82-dd24-4415-9e6a-73782100a625",
        "incomes": [
            {"method": "GROSS_UP", "amount": 40000000, "item": "ITEM_01_BASIC_SALARY"},
            {
                "method": "GROSS_UP",
                "amount": 10000000,
                "item": "ITEM_03_OTHER_ALLOWANCE",
            },
            {"method": "GROSS_UP", "amount": 2000000, "item": "ITEM_04_HONORARIUM"},
            {
                "method": "GROSS_UP",
                "amount": 1000000,
                "item": "ITEM_05_INSURANCE_PREMIUM",
            },
            {
                "method": "GROSS_UP",
                "amount": 5000000,
                "item": "ITEM_06_OTHER_ENJOYMENT_REVENUE",
            },
            {"method": "GROSS", "amount": 50000000, "item": "ITEM_07_BONUS"},
            {
                "method": "GROSS_UP",
                "amount": 6000000,
                "item": "ITEM_10_RETIREMENT_CONTRIBUTION",
            },
        ],
        "referenceDate": "2101-12-31",
        "paymentMethod": "COMBINED",
        "externalId": "21ba5875-d732-401a-ace8-3b55741ed36b",
        "multiplier": 1,
        "paymentDate": "2101-12-31",
        "calculationType": "REGULAR",
        "workingDays": 26,
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `download1721_a1_report()`

> **Download 1721 A1 Report**

### Method Signature

```python
def download1721_a1_report(self, id: str) -> object: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

result = api.download1721_a1_report("id_example")
print(result)
```

______________________________________________________________________

## `download1721_vi_report()`

> **Download 1721 VI Report**

### Method Signature

```python
def download1721_vi_report(self, id: str) -> object: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

result = api.download1721_vi_report("id_example")
print(result)
```

______________________________________________________________________

## `download1721_vi_tax_report()`

> **Download 1721 VI Report**

### Method Signature

```python
def download1721_vi_tax_report(self, id: str) -> object: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

result = api.download1721_vi_tax_report("id_example")
print(result)
```

______________________________________________________________________

## `download1721_vii_report()`

> **Download 1721 VII Report**

### Method Signature

```python
def download1721_vii_report(self, id: str) -> object: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

result = api.download1721_vii_report("id_example")
print(result)
```

______________________________________________________________________

## `download1721_vii_tax_report()`

> **Download 1721 VII Report**

### Method Signature

```python
def download1721_vii_tax_report(self, id: str) -> object: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

result = api.download1721_vii_tax_report("id_example")
print(result)
```

______________________________________________________________________

## `download1721_viii_report()`

> **Download 1721 VIII Report**

### Method Signature

```python
def download1721_viii_report(self, id: str) -> object: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

result = api.download1721_viii_report("id_example")
print(result)
```

______________________________________________________________________

## `get1721_a1_reports()`

> **Get 1721 A1 Reports**

### Method Signature

```python
def get1721_a1_reports(self) -> TaxReport1721A1PageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TaxReport1721A1PageResponse`**](../models/TaxReport1721A1PageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get1721_a1_reports()

# Access response data
print(response)
```

______________________________________________________________________

## `get1721_vi_reports()`

> **Get 1721 VI Reports**

### Method Signature

```python
def get1721_vi_reports(self) -> TaxReport1721VIPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TaxReport1721VIPageResponse`**](../models/TaxReport1721VIPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get1721_vi_reports()

# Access response data
print(response)
```

______________________________________________________________________

## `get1721_vi_tax_reports()`

> **Get 1721 VI Reports**

### Method Signature

```python
def get1721_vi_tax_reports(self) -> TaxReport1721VIPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TaxReport1721VIPageResponse`**](../models/TaxReport1721VIPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get1721_vi_tax_reports()

# Access response data
print(response)
```

______________________________________________________________________

## `get1721_vii_reports()`

> **Get 1721 VII Reports**

### Method Signature

```python
def get1721_vii_reports(self) -> TaxReport1721VIIPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TaxReport1721VIIPageResponse`**](../models/TaxReport1721VIIPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get1721_vii_reports()

# Access response data
print(response)
```

______________________________________________________________________

## `get1721_vii_tax_reports()`

> **Get 1721 VII Reports**

### Method Signature

```python
def get1721_vii_tax_reports(self) -> TaxReport1721VIIPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TaxReport1721VIIPageResponse`**](../models/TaxReport1721VIIPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get1721_vii_tax_reports()

# Access response data
print(response)
```

______________________________________________________________________

## `get1721_viii_reports()`

> **Get 1721 VIII Reports**

### Method Signature

```python
def get1721_viii_reports(self) -> TaxReport1721VIIIPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TaxReport1721VIIIPageResponse`**](../models/TaxReport1721VIIIPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get1721_viii_reports()

# Access response data
print(response)
```

______________________________________________________________________

## `get_detailed1721_vi_reports()`

> **Get Detailed 1721 VI Reports**

### Method Signature

```python
def get_detailed1721_vi_reports(self) -> TaxReport1721VIDetailResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TaxReport1721VIDetailResponse`**](../models/TaxReport1721VIDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get_detailed1721_vi_reports()

# Access response data
print(response)
```

______________________________________________________________________

## `get_detailed1721_vi_tax_reports()`

> **Get Detailed 1721 VI Reports**

### Method Signature

```python
def get_detailed1721_vi_tax_reports(self) -> TaxReport1721VIDetailResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TaxReport1721VIDetailResponse`**](../models/TaxReport1721VIDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get_detailed1721_vi_tax_reports()

# Access response data
print(response)
```

______________________________________________________________________

## `get_kpp()`

> **Get Kpp**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| name           | :                   | Like operator |
| code           | :                   | Like operator |

### Method Signature

```python
def get_kpp(self) -> KppPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`KppPageResponse`**](../models/KppPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get_kpp()

# Access response data
print(response)
```

______________________________________________________________________

## `get_monthly_tax_report()`

> **Get Monthly Tax Report**

### Search Query

| Supported Keys               | Supported Operators | Notes                                                                              |
| ---------------------------- | ------------------- | ---------------------------------------------------------------------------------- |
| year                         | :<br>><br>\<        | Equal operator<br>Greater than or equal to<br>Less than or equal to                |
| month                        | :<br>><br>\<        | Equal operator<br>Greater than or equal to<br>Less than or equal to equal operator |
| taxObject                    | :                   | Equal operator                                                                     |
| taxObjectIn                  | :                   | Equal operator with multiple value delimited by “;”                                |
| pph21Method                  | :                   | Equal operator                                                                     |
| employeeId                   | :                   | Equal operator                                                                     |
| employeeIdentificationNumber | :                   | Like operator                                                                      |
| employeeName                 | :                   | Like operator                                                                      |
| kppId                        | :                   | Equal operator                                                                     |
| migrated                     | :                   | Equal operator                                                                     |

### Method Signature

```python
def get_monthly_tax_report(self) -> MonthlyTaxReportPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`MonthlyTaxReportPageResponse`**](../models/MonthlyTaxReportPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get_monthly_tax_report()

# Access response data
print(response)
```

______________________________________________________________________

## `get_pph21_policy()`

> **Get Pph21 Policy**

### Method Signature

```python
def get_pph21_policy(self) -> Pph21PolicyResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`Pph21PolicyResponse`**](../models/Pph21PolicyResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get_pph21_policy()

# Access response data
print(response)
```

______________________________________________________________________

## `get_ptkp_categories()`

> **Get Ptkp Categories**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| name           | :                   | Like operator |
| code           | :                   | Like operator |

### Method Signature

```python
def get_ptkp_categories(self) -> PtkpCategoryPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`PtkpCategoryPageResponse`**](../models/PtkpCategoryPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get_ptkp_categories()

# Access response data
print(response)
```

______________________________________________________________________

## `get_tax_calculations()`

> **Get Tax Calculations**

### Search Query

| Supported Keys | Supported Operators | Notes                                                                              |
| -------------- | ------------------- | ---------------------------------------------------------------------------------- |
| idIn           | :                   | Equal operator with multiple value delimited by “;”                                |
| employeeIdIn   | :                   | Equal operator with multiple value delimited by “;”                                |
| year           | :<br>><br>\<        | Equal operator<br>Greater than or equal to<br>Less than or equal to                |
| month          | :<br>><br>\<        | Equal operator<br>Greater than or equal to<br>Less than or equal to equal operator |
| paymentDate    | :<br>><br>\<        | Equal operator<br>Greater than or equal to<br>Less than or equal to equal operator |
| taxObject      | :                   | Equal operator                                                                     |
| taxObjectIn    | :                   | Equal operator with multiple value delimited by “;”                                |
| pph21Method    | :                   | Equal operator                                                                     |
| employeeId     | :                   | Equal operator                                                                     |
| employeeName   | :                   | Like operator                                                                      |

### Method Signature

```python
def get_tax_calculations(self) -> TaxCalculationPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TaxCalculationPageResponse`**](../models/TaxCalculationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get_tax_calculations()

# Access response data
print(response)
```

______________________________________________________________________

## `get_tax_calculations_by_external_id()`

> **Get Tax Calculations By External Id**

### Method Signature

```python
def get_tax_calculations_by_external_id(
    self, external_id: str
) -> TaxCalculationDetailResponse: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `external_id` | `str` |    ✅    |             |

### Returns

[**`TaxCalculationDetailResponse`**](../models/TaxCalculationDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get_tax_calculations_by_external_id("external_id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_tax_calculations_by_id()`

> **Get Tax Calculations By Id**

### Method Signature

```python
def get_tax_calculations_by_id(self, id: str) -> TaxCalculationDetailResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`TaxCalculationDetailResponse`**](../models/TaxCalculationDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.get_tax_calculations_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `monthly_tax_detail_find_all()`

> **GET Monthly Tax Detail**

### Search Query

| Supported Keys               | Supported Operators | Notes                                                                              |
| ---------------------------- | ------------------- | ---------------------------------------------------------------------------------- |
| year                         | :<br>><br>\<        | Equal operator<br>Greater than or equal to<br>Less than or equal to                |
| month                        | :<br>><br>\<        | Equal operator<br>Greater than or equal to<br>Less than or equal to equal operator |
| taxObject                    | :                   | Equal operator                                                                     |
| taxObjectIn                  | :                   | Equal operator with multiple value delimited by “;”                                |
| pph21Method                  | :                   | Equal operator                                                                     |
| employeeId                   | :                   | Equal operator                                                                     |
| employeeIdentificationNumber | :                   | Like operator                                                                      |
| employeeName                 | :                   | Like operator                                                                      |
| kppId                        | :                   | Equal operator                                                                     |
| migrated                     | :                   | Equal operator                                                                     |

### Method Signature

```python
def monthly_tax_detail_find_all(
    self, page: int = None, size: int = None
) -> MonthlyTaxDetailPageResponse: ...
```

### Parameters

| Name   | Type  | Required | Description                |
| :----- | :---- | :------: | :------------------------- |
| `page` | `int` |    ❌    | Page number (default: `0`) |
| `size` | `int` |    ❌    | Page size (default: `10`)  |

### Returns

[**`MonthlyTaxDetailPageResponse`**](../models/MonthlyTaxDetailPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.monthly_tax_detail_find_all(page=0, size=10)

# Access response data
print(response)
```

______________________________________________________________________

## `simulate_annual_tax()`

> **Simulate annual tax calculation**

Simulate annual tax calculation based on the provided scenario.
<br>This API only works for <strong>PERMANENT</strong> taxObject.

### Method Signature

```python
def simulate_annual_tax(
    self, annual_tax_calculation_simulator_request: AnnualTaxCalculationSimulatorRequest
) -> AnnualTaxCalculationSimulatorResponse: ...
```

### Parameters

| Name                                       | Type                                                                                        | Required | Description |
| :----------------------------------------- | :------------------------------------------------------------------------------------------ | :------: | :---------- |
| `annual_tax_calculation_simulator_request` | [`AnnualTaxCalculationSimulatorRequest`](../models/AnnualTaxCalculationSimulatorRequest.md) |    ✅    |             |

### Returns

[**`AnnualTaxCalculationSimulatorResponse`**](../models/AnnualTaxCalculationSimulatorResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.simulate_annual_tax(
    openapi_client.AnnualTaxCalculationSimulatorRequest()
)

# Access response data
print(response)
```

______________________________________________________________________

## `simulate_monthly_tax()`

> **Simulate monthly tax calculation**

Simulate monthly tax calculation based on the provided scenario.

### Method Signature

```python
def simulate_monthly_tax(
    self,
    monthly_tax_calculation_simulator_request: MonthlyTaxCalculationSimulatorRequest,
) -> MonthlyTaxCalculationSimulatorResponse: ...
```

### Parameters

| Name                                        | Type                                                                                          | Required | Description |
| :------------------------------------------ | :-------------------------------------------------------------------------------------------- | :------: | :---------- |
| `monthly_tax_calculation_simulator_request` | [`MonthlyTaxCalculationSimulatorRequest`](../models/MonthlyTaxCalculationSimulatorRequest.md) |    ✅    |             |

### Returns

[**`MonthlyTaxCalculationSimulatorResponse`**](../models/MonthlyTaxCalculationSimulatorResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

response = api.simulate_monthly_tax(
    openapi_client.MonthlyTaxCalculationSimulatorRequest()
)

# Access response data
print(response)
```

______________________________________________________________________

## `undo_tax_calculation_by_id()`

> **Undo Tax Calculation By Id**

### Method Signature

```python
def undo_tax_calculation_by_id(self, id: str) -> object: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

result = api.undo_tax_calculation_by_id("id_example")
print(result)
```

______________________________________________________________________

## `undo_tax_calculations_by_external_id()`

> **Undo Tax Calculations By External Id**

### Method Signature

```python
def undo_tax_calculations_by_external_id(self, external_id: str) -> object: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `external_id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TaxApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxApi(client)

result = api.undo_tax_calculations_by_external_id("external_id_example")
print(result)
```

______________________________________________________________________
