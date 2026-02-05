# TimeManagementApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`create_attendance_machine_data()`](#create_attendance_machine_data) - Create Attendance Machine Data
- [`create_employee_roster_configuration()`](#create_employee_roster_configuration) - Create Employee Roster Configuration
- [`create_leave_balance()`](#create_leave_balance) - Create Leave Balance
- [`create_other_leave_balance()`](#create_other_leave_balance) - Create Other Leave Balance
- [`create_shift_pattern_template()`](#create_shift_pattern_template) - Create Shift Pattern Template
- [`create_workgroup_roster_configuration()`](#create_workgroup_roster_configuration) - Create Workgroup Roster Configuration
- [`delete_employee_roster_configuration()`](#delete_employee_roster_configuration) - Delete Employee Roster Configuration
- [`delete_shift_pattern_template()`](#delete_shift_pattern_template) - Delete Shift Pattern Template
- [`delete_workgroup_roster_configuration()`](#delete_workgroup_roster_configuration) - Delete Workgroup Roster Configuration
- [`get_attendances()`](#get_attendances) - Get Attendances
- [`get_employee_workday_configurations()`](#get_employee_workday_configurations) - Get Employee Workday Configurations
- [`get_holidays()`](#get_holidays) - Get Holidays
- [`get_leave_balances()`](#get_leave_balances) - Get Leave Balances
- [`get_other_leave_balances()`](#get_other_leave_balances) - Get Other Leave Balances
- [`get_shift_pattern_templates()`](#get_shift_pattern_templates) - Get Shift Pattern Templates
- [`get_workgroup_workday_configurations()`](#get_workgroup_workday_configurations) - Get Workgroup Workday Configurations
- [`read_attendance_recapitulation_detail()`](#read_attendance_recapitulation_detail) - Read Attendance Recapitulation Detail
- [`read_employee_roster_configuration_by_id()`](#read_employee_roster_configuration_by_id) - Read Employee Roster Configuration By Id
- [`read_shift_pattern_template_by_id()`](#read_shift_pattern_template_by_id) - Read Shift Pattern Template By Id
- [`read_workgroup_roster_configuration_by_id()`](#read_workgroup_roster_configuration_by_id) - Read Workgroup Roster Configuration By ID
- [`update_employee_roster_configuration()`](#update_employee_roster_configuration) - Update Employee Roster Configuration
- [`update_shift_pattern_template()`](#update_shift_pattern_template) - Update Shift Pattern Template
- [`update_workgroup_roster_configuration()`](#update_workgroup_roster_configuration) - Update Workgroup Roster Configuration

______________________________________________________________________

## `create_attendance_machine_data()`

> **Create Attendance Machine Data**

### Method Signature

```python
def create_attendance_machine_data(
    self, fingerprint_item_request: List[FingerprintItemRequest] = None
) -> FingerprintResponse: ...
```

### Parameters

| Name                       | Type                                                                  | Required | Description |
| :------------------------- | :-------------------------------------------------------------------- | :------: | :---------- |
| `fingerprint_item_request` | [`List[FingerprintItemRequest]`](../models/FingerprintItemRequest.md) |    ❌    |             |

### Returns

[**`FingerprintResponse`**](../models/FingerprintResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.create_attendance_machine_data(
    fingerprint_item_request=[
        {"identificationNumber": "1", "time": "2021-04-05T07:50:00+07:00"},
        {"identificationNumber": "2", "time": "2021-04-05T07:55:00+07:00"},
    ]
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_employee_roster_configuration()`

> **Create Employee Roster Configuration**

### Method Signature

```python
def create_employee_roster_configuration(
    self,
    employee_workday_configuration_request: EmployeeWorkdayConfigurationRequest = None,
) -> EmployeeWorkdayConfigurationResponse: ...
```

### Parameters

| Name                                     | Type                                                                                      | Required | Description |
| :--------------------------------------- | :---------------------------------------------------------------------------------------- | :------: | :---------- |
| `employee_workday_configuration_request` | [`EmployeeWorkdayConfigurationRequest`](../models/EmployeeWorkdayConfigurationRequest.md) |    ❌    |             |

### Returns

[**`EmployeeWorkdayConfigurationResponse`**](../models/EmployeeWorkdayConfigurationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.create_employee_roster_configuration(
    employee_workday_configuration_request={
        "shiftPatternTemplate": {"id": "34b1cd5e-366a-43d0-8bbe-443cc531b220"},
        "startDate": "2017-01-01",
        "endDate": "2017-01-06",
        "includeHoliday": false,
        "startSequence": 1,
        "employee": {"id": "09cf7051-4ac9-4a21-912d-bbeeb05ff97b"},
        "includeMissingShift": false,
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_leave_balance()`

> **Create Leave Balance**

### Method Signature

```python
def create_leave_balance(
    self, leave_balance_request: LeaveBalanceRequest = None
) -> LeaveBalanceItemResponse: ...
```

### Parameters

| Name                    | Type                                                      | Required | Description |
| :---------------------- | :-------------------------------------------------------- | :------: | :---------- |
| `leave_balance_request` | [`LeaveBalanceRequest`](../models/LeaveBalanceRequest.md) |    ❌    |             |

### Returns

[**`LeaveBalanceItemResponse`**](../models/LeaveBalanceItemResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.create_leave_balance(
    leave_balance_request={
        "identificationNumber": "NIK",
        "year": 2021,
        "accrualFrequencyType": "YEARLY",
        "monthlyAccrualIncludeBonus": false,
        "givenDate": "2021-01-01",
        "startDate": "2021-01-01",
        "endDate": "2021-12-31",
        "balance": 12,
        "bonus": 0,
        "debt": 0,
        "extended": false,
        "maximumExtendedDuration": 0,
        "maximumExtendedBalance": 0,
        "extendedBalanceIncludeBonus": false,
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_other_leave_balance()`

> **Create Other Leave Balance**

### Method Signature

```python
def create_other_leave_balance(
    self, other_leave_balance_request: OtherLeaveBalanceRequest = None
) -> OtherLeaveBalanceCreateResponse: ...
```

### Parameters

| Name                          | Type                                                                | Required | Description |
| :---------------------------- | :------------------------------------------------------------------ | :------: | :---------- |
| `other_leave_balance_request` | [`OtherLeaveBalanceRequest`](../models/OtherLeaveBalanceRequest.md) |    ❌    |             |

### Returns

[**`OtherLeaveBalanceCreateResponse`**](../models/OtherLeaveBalanceCreateResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.create_other_leave_balance(
    other_leave_balance_request={
        "identificationNumber": "otherleave1",
        "otherLeaveStatusCode": "CBSR",
        "year": 2011,
        "balance": 15,
        "givenDate": "2017-01-01",
        "startDate": "2017-01-01",
        "endDate": "2025-12-01",
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_shift_pattern_template()`

> **Create Shift Pattern Template**

### Method Signature

```python
def create_shift_pattern_template(
    self, shift_pattern_template_request: ShiftPatternTemplateRequest = None
) -> ShiftPatternTemplateListItemResponse: ...
```

### Parameters

| Name                             | Type                                                                      | Required | Description |
| :------------------------------- | :------------------------------------------------------------------------ | :------: | :---------- |
| `shift_pattern_template_request` | [`ShiftPatternTemplateRequest`](../models/ShiftPatternTemplateRequest.md) |    ❌    |             |

### Returns

[**`ShiftPatternTemplateListItemResponse`**](../models/ShiftPatternTemplateListItemResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.create_shift_pattern_template(
    shift_pattern_template_request={
        "name": "Pattern test 3",
        "shiftPatternTemplateDetails": [
            {"shift": {"id": "ced2860c-7457-4d07-be16-2e1642173dc0"}, "sequence": 0},
            {"shift": null, "sequence": 1},
        ],
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_workgroup_roster_configuration()`

> **Create Workgroup Roster Configuration**

### Method Signature

```python
def create_workgroup_roster_configuration(
    self,
    workgroup_workday_configuration_request: WorkgroupWorkdayConfigurationRequest = None,
) -> WorkgroupWorkdayConfigurationResponse: ...
```

### Parameters

| Name                                      | Type                                                                                        | Required | Description |
| :---------------------------------------- | :------------------------------------------------------------------------------------------ | :------: | :---------- |
| `workgroup_workday_configuration_request` | [`WorkgroupWorkdayConfigurationRequest`](../models/WorkgroupWorkdayConfigurationRequest.md) |    ❌    |             |

### Returns

[**`WorkgroupWorkdayConfigurationResponse`**](../models/WorkgroupWorkdayConfigurationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.create_workgroup_roster_configuration(
    workgroup_workday_configuration_request={
        "shiftPatternTemplate": {"id": "34b1cd5e-366a-43d0-8bbe-443cc531b220"},
        "startDate": "2017-01-01",
        "endDate": "2017-01-06",
        "includeHoliday": false,
        "startSequence": 1,
        "workgroup": {"id": "09cf7051-4ac9-4a21-912d-bbeeb05ff97b"},
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `delete_employee_roster_configuration()`

> **Delete Employee Roster Configuration**

### Method Signature

```python
def delete_employee_roster_configuration(self, id: str) -> object: ...
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
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

result = api.delete_employee_roster_configuration("id_example")
print(result)
```

______________________________________________________________________

## `delete_shift_pattern_template()`

> **Delete Shift Pattern Template**

### Method Signature

```python
def delete_shift_pattern_template(self, id: str) -> object: ...
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
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

result = api.delete_shift_pattern_template("id_example")
print(result)
```

______________________________________________________________________

## `delete_workgroup_roster_configuration()`

> **Delete Workgroup Roster Configuration**

### Method Signature

```python
def delete_workgroup_roster_configuration(self, id: str) -> object: ...
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
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

result = api.delete_workgroup_roster_configuration("id_example")
print(result)
```

______________________________________________________________________

## `get_attendances()`

> **Get Attendances**

### Search Query

| Supported Keys                | Supported Operators | Notes                                             |
| ----------------------------- | ------------------- | ------------------------------------------------- |
| employee.identificationNumber | :                   | Like                                              |
| date                          | ><br>\<             | Greater than or equal to<br>Less than or equal to |

### Method Signature

```python
def get_attendances(self) -> AttendancePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`AttendancePageResponse`**](../models/AttendancePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.get_attendances()

# Access response data
print(response)
```

______________________________________________________________________

## `get_employee_workday_configurations()`

> **Get Employee Workday Configurations**

### Search Query

| Supported Keys | Supported Operators | Notes                                             |
| -------------- | ------------------- | ------------------------------------------------- |
| startDate      | ><br>\<             | Greater than or equal to<br>Less than or equal to |
| endDate        | ><br>\<             | Greater than or equal to<br>Less than or equal to |

### Method Signature

```python
def get_employee_workday_configurations(
    self,
) -> EmployeeWorkdayConfigurationPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`EmployeeWorkdayConfigurationPageResponse`**](../models/EmployeeWorkdayConfigurationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.get_employee_workday_configurations()

# Access response data
print(response)
```

______________________________________________________________________

## `get_holidays()`

> **Get Holidays**

### Search Query

| Supported Keys | Supported Operators | Notes                                             |
| -------------- | ------------------- | ------------------------------------------------- |
| holidayDate    | ><br>\<             | Greater than or equal to<br>Less than or equal to |
| name           | :                   | Equal Operator                                    |

### Method Signature

```python
def get_holidays(self) -> HolidayPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`HolidayPageResponse`**](../models/HolidayPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.get_holidays()

# Access response data
print(response)
```

______________________________________________________________________

## `get_leave_balances()`

> **Get Leave Balances**

### Search Query

| Supported Keys                | Supported Operators | Notes                                                      |
| ----------------------------- | ------------------- | ---------------------------------------------------------- |
| employee.identificationNumber | :                   | Like                                                       |
| year                          | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to |
| active                        | :                   | Equal                                                      |
| extended                      | :                   | Equal                                                      |

### Method Signature

```python
def get_leave_balances(self) -> LeaveBalancePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`LeaveBalancePageResponse`**](../models/LeaveBalancePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.get_leave_balances()

# Access response data
print(response)
```

______________________________________________________________________

## `get_other_leave_balances()`

> **Get Other Leave Balances**

### Search Query

| Supported Keys                | Supported Operators | Notes |
| ----------------------------- | ------------------- | ----- |
| employee.id                   | :                   | Equal |
| employee.identificationNumber | :                   | Equal |
| year                          | :                   | Equal |
| otherLeaveStatus.code         | :                   | Equal |

### Method Signature

```python
def get_other_leave_balances(self) -> OtherLeaveBalancePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`OtherLeaveBalancePageResponse`**](../models/OtherLeaveBalancePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.get_other_leave_balances()

# Access response data
print(response)
```

______________________________________________________________________

## `get_shift_pattern_templates()`

> **Get Shift Pattern Templates**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| name           | :                   | Like operator |

### Method Signature

```python
def get_shift_pattern_templates(self) -> ShiftPatternTemplatePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`ShiftPatternTemplatePageResponse`**](../models/ShiftPatternTemplatePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.get_shift_pattern_templates()

# Access response data
print(response)
```

______________________________________________________________________

## `get_workgroup_workday_configurations()`

> **Get Workgroup Workday Configurations**

### Search Query

| Supported Keys | Supported Operators | Notes                                             |
| -------------- | ------------------- | ------------------------------------------------- |
| startDate      | ><br>\<             | Greater than or equal to<br>Less than or equal to |
| endDate        | ><br>\<             | Greater than or equal to<br>Less than or equal to |

### Method Signature

```python
def get_workgroup_workday_configurations(
    self,
) -> WorkgroupWorkdayConfigurationPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`WorkgroupWorkdayConfigurationPageResponse`**](../models/WorkgroupWorkdayConfigurationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.get_workgroup_workday_configurations()

# Access response data
print(response)
```

______________________________________________________________________

## `read_attendance_recapitulation_detail()`

> **Read Attendance Recapitulation Detail**

### Search Query

| Supported Keys   | Supported Operators | Notes                                                                         |
| ---------------- | ------------------- | ----------------------------------------------------------------------------- |
| employee.id      | :                   | Equal to                                                                      |
| date             | ><br>\<             | Greater than or equal to<br>Less than or equal to                             |
| attendances.type | :                   | Equal to, supported values: ABSENT, ANNUAL_LEAVE, COMPENSATORY_LEAVE, PRESENT |

### Method Signature

```python
def read_attendance_recapitulation_detail(
    self,
) -> AttendanceRecapitulationDetailPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`AttendanceRecapitulationDetailPageResponse`**](../models/AttendanceRecapitulationDetailPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.read_attendance_recapitulation_detail()

# Access response data
print(response)
```

______________________________________________________________________

## `read_employee_roster_configuration_by_id()`

> **Read Employee Roster Configuration By Id**

### Method Signature

```python
def read_employee_roster_configuration_by_id(
    self, id: str
) -> EmployeeWorkdayConfigurationResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`EmployeeWorkdayConfigurationResponse`**](../models/EmployeeWorkdayConfigurationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.read_employee_roster_configuration_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `read_shift_pattern_template_by_id()`

> **Read Shift Pattern Template By Id**

### Method Signature

```python
def read_shift_pattern_template_by_id(
    self, id: str
) -> ShiftPatternTemplateItemResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`ShiftPatternTemplateItemResponse`**](../models/ShiftPatternTemplateItemResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.read_shift_pattern_template_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `read_workgroup_roster_configuration_by_id()`

> **Read Workgroup Roster Configuration By ID**

### Method Signature

```python
def read_workgroup_roster_configuration_by_id(
    self, id: str
) -> WorkgroupWorkdayConfigurationResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`WorkgroupWorkdayConfigurationResponse`**](../models/WorkgroupWorkdayConfigurationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.read_workgroup_roster_configuration_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `update_employee_roster_configuration()`

> **Update Employee Roster Configuration**

### Method Signature

```python
def update_employee_roster_configuration(
    self,
    id: str,
    employee_workday_configuration_request: EmployeeWorkdayConfigurationRequest = None,
) -> EmployeeWorkdayConfigurationResponse: ...
```

### Parameters

| Name                                     | Type                                                                                      | Required | Description |
| :--------------------------------------- | :---------------------------------------------------------------------------------------- | :------: | :---------- |
| `id`                                     | `str`                                                                                     |    ✅    |             |
| `employee_workday_configuration_request` | [`EmployeeWorkdayConfigurationRequest`](../models/EmployeeWorkdayConfigurationRequest.md) |    ❌    |             |

### Returns

[**`EmployeeWorkdayConfigurationResponse`**](../models/EmployeeWorkdayConfigurationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.update_employee_roster_configuration(
    "id_example",
    employee_workday_configuration_request={
        "startDate": "2021-04-05",
        "endDate": "2021-04-05",
        "shiftPatternTemplate": {"id": ""},
        "startSequence": 0,
        "includeHoliday": false,
        "includeMissingShift": false,
        "employee": {"id": ""},
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_shift_pattern_template()`

> **Update Shift Pattern Template**

### Method Signature

```python
def update_shift_pattern_template(
    self, id: str, shift_pattern_template_request: ShiftPatternTemplateRequest = None
) -> ShiftPatternTemplateItemResponse: ...
```

### Parameters

| Name                             | Type                                                                      | Required | Description |
| :------------------------------- | :------------------------------------------------------------------------ | :------: | :---------- |
| `id`                             | `str`                                                                     |    ✅    |             |
| `shift_pattern_template_request` | [`ShiftPatternTemplateRequest`](../models/ShiftPatternTemplateRequest.md) |    ❌    |             |

### Returns

[**`ShiftPatternTemplateItemResponse`**](../models/ShiftPatternTemplateItemResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.update_shift_pattern_template(
    "id_example",
    shift_pattern_template_request={
        "name": "Template 1",
        "shiftPatternTemplateDetails": [
            {"shift": null, "sequence": 0},
            {"shift": {"id": ""}, "sequence": 1},
        ],
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_workgroup_roster_configuration()`

> **Update Workgroup Roster Configuration**

### Method Signature

```python
def update_workgroup_roster_configuration(
    self,
    id: str,
    workgroup_workday_configuration_request: WorkgroupWorkdayConfigurationRequest = None,
) -> WorkgroupWorkdayConfigurationResponse: ...
```

### Parameters

| Name                                      | Type                                                                                        | Required | Description |
| :---------------------------------------- | :------------------------------------------------------------------------------------------ | :------: | :---------- |
| `id`                                      | `str`                                                                                       |    ✅    |             |
| `workgroup_workday_configuration_request` | [`WorkgroupWorkdayConfigurationRequest`](../models/WorkgroupWorkdayConfigurationRequest.md) |    ❌    |             |

### Returns

[**`WorkgroupWorkdayConfigurationResponse`**](../models/WorkgroupWorkdayConfigurationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TimeManagementApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TimeManagementApi(client)

response = api.update_workgroup_roster_configuration(
    "id_example",
    workgroup_workday_configuration_request={
        "startDate": "2021-04-05",
        "endDate": "2021-04-05",
        "shiftPatternTemplate": {"id": ""},
        "startSequence": 0,
        "includeHoliday": false,
        "workgroup": {"id": ""},
    },
)

# Access response data
print(response)
```

______________________________________________________________________
