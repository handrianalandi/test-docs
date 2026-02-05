# PayslipDownloadRequest

## Properties

| Name           | Type   | Required | Description |
| :------------- | :----- | :------: | :---------- |
| `payment_date` | `date` |    ✅    |             |
| `type`         | `str`  |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import PayslipDownloadRequest

payslip_download_request = PayslipDownloadRequest(
    payment_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(), type="''"
)
```

### Working with JSON

```python
from catapa import PayslipDownloadRequest

# Parse from JSON
json_str = '{"payment_date": "example"}'
payslip_download_request = PayslipDownloadRequest.from_json(json_str)

# Convert to JSON
print(payslip_download_request.to_json())
```

### Working with dictionaries

```python
from catapa import PayslipDownloadRequest

# Convert to/from dictionary
data_dict = payslip_download_request.to_dict()
payslip_download_request = PayslipDownloadRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(payslip_download_request.payment_date)
# Update properties
payslip_download_request.payment_date = new_value
```
