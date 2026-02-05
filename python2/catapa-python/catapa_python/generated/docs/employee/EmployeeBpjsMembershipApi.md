# EmployeeBpjsMembershipApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_bpjs_healthcare_membership()`](#get_bpjs_healthcare_membership) - Get BPJS Healthcare Membership
- [`get_bpjs_manpower_membership()`](#get_bpjs_manpower_membership) - Get BPJS Manpower Membership
- [`update_bpjs_healthcare_membership()`](#update_bpjs_healthcare_membership) - Update BPJS Healthcare Membership
- [`update_bpjs_manpower_membership()`](#update_bpjs_manpower_membership) - Update BPJS Manpower Membership

______________________________________________________________________

## `get_bpjs_healthcare_membership()`

> **Get BPJS Healthcare Membership**

### Method Signature

```python
def get_bpjs_healthcare_membership(
    self, employee_id: str
) -> BpjsHealthcareMembershipResponse: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `employee_id` | `str` |    ✅    |             |

### Returns

[**`BpjsHealthcareMembershipResponse`**](../models/BpjsHealthcareMembershipResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeBpjsMembershipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeBpjsMembershipApi(client)

response = api.get_bpjs_healthcare_membership("employee_id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_bpjs_manpower_membership()`

> **Get BPJS Manpower Membership**

### Method Signature

```python
def get_bpjs_manpower_membership(
    self, employee_id: str
) -> BpjsManpowerMembershipResponse: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `employee_id` | `str` |    ✅    |             |

### Returns

[**`BpjsManpowerMembershipResponse`**](../models/BpjsManpowerMembershipResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeBpjsMembershipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeBpjsMembershipApi(client)

response = api.get_bpjs_manpower_membership("employee_id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `update_bpjs_healthcare_membership()`

> **Update BPJS Healthcare Membership**

### Method Signature

```python
def update_bpjs_healthcare_membership(
    self,
    employee_id: str,
    bpjs_healthcare_membership_request: BpjsHealthcareMembershipRequest = None,
) -> BpjsHealthcareMembershipResponse: ...
```

### Parameters

| Name                                 | Type                                                                              | Required | Description |
| :----------------------------------- | :-------------------------------------------------------------------------------- | :------: | :---------- |
| `employee_id`                        | `str`                                                                             |    ✅    |             |
| `bpjs_healthcare_membership_request` | [`BpjsHealthcareMembershipRequest`](../models/BpjsHealthcareMembershipRequest.md) |    ❌    |             |

### Returns

[**`BpjsHealthcareMembershipResponse`**](../models/BpjsHealthcareMembershipResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeBpjsMembershipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeBpjsMembershipApi(client)

response = api.update_bpjs_healthcare_membership(
    "employee_id_example",
    bpjs_healthcare_membership_request={
        "additionalFamilyMemberships": [
            {
                "dentalHealthcareFacility": "dental",
                "familyMemberName": "Alfian Hanafi",
                "familyMemberRelationId": "1f29ea4e-a7e9-11e6-80f5-76304dec7eb7",
                "firstLevelHealthcareFacility": "Level 1",
                "id": "af4a47376-e964-4cb2-a6b5-d540b17bfea0",
            }
        ],
        "bpjsHealthcareProviderId": "11f6b427-b7a8-11e6-b782-d0bf9cdd43ca",
        "bpjsHealthcareTemplateId": "38322fb6-b129-11e6-80f5-76304dec7eb7",
        "bpjsHealthcareTreatmentClassId": "3f0afd17-af9a-4274-a3da-7cba7f96b7f1",
        "dentalHealthcareFacility": "dental",
        "firstLevelHealthcareFacility": "first level",
        "membershipNumber": "555556666",
        "startDate": "2022-11-11",
        "effectiveDate": "2022-11-11",
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_bpjs_manpower_membership()`

> **Update BPJS Manpower Membership**

### Method Signature

```python
def update_bpjs_manpower_membership(
    self,
    employee_id: str,
    bpjs_manpower_membership_request: BpjsManpowerMembershipRequest = None,
) -> BpjsManpowerMembershipResponse: ...
```

### Parameters

| Name                               | Type                                                                          | Required | Description |
| :--------------------------------- | :---------------------------------------------------------------------------- | :------: | :---------- |
| `employee_id`                      | `str`                                                                         |    ✅    |             |
| `bpjs_manpower_membership_request` | [`BpjsManpowerMembershipRequest`](../models/BpjsManpowerMembershipRequest.md) |    ❌    |             |

### Returns

[**`BpjsManpowerMembershipResponse`**](../models/BpjsManpowerMembershipResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeBpjsMembershipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeBpjsMembershipApi(client)

response = api.update_bpjs_manpower_membership(
    "employee_id_example",
    bpjs_manpower_membership_request={
        "bpjsManpowerProviderId": "11f6b427-b7a8-11e6-b782-d0bf9cdd43ca",
        "bpjsManpowerTemplateId": "48322fb6-b129-11e6-80f5-76304dec7eb7",
        "membershipNumber": "555556666",
        "startDate": "2022-11-11",
        "effectiveDate": "2022-11-11",
    },
)

# Access response data
print(response)
```

______________________________________________________________________
