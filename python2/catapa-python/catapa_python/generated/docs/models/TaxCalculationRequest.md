# TaxCalculationRequest

## Properties

| Name               | Type                                                                  | Required | Description |
| :----------------- | :-------------------------------------------------------------------- | :------: | :---------- |
| `employee_id`      | `str`                                                                 |    ✅    |             |
| `incomes`          | [`List[TaxCalculationIncomeRequest]`](TaxCalculationIncomeRequest.md) |    ✅    |             |
| `reference_date`   | `date`                                                                |    ✅    |             |
| `payment_method`   | `str`                                                                 |    ✅    |             |
| `external_id`      | `str`                                                                 |    ✅    |             |
| `multiplier`       | `float`                                                               |    ✅    |             |
| `payment_date`     | `date`                                                                |    ✅    |             |
| `calculation_type` | `str`                                                                 |    ✅    |             |
| `working_days`     | `float`                                                               |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import TaxCalculationRequest

tax_calculation_request = TaxCalculationRequest(
    employee_id="''",
    incomes=[],  # List[[TaxCalculationIncomeRequest](TaxCalculationIncomeRequest.md)]
    reference_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    payment_method="''",
    external_id="''",
    multiplier=1.337,
    payment_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    calculation_type="''",
    working_days=1.337,
)
```

### Working with JSON

```python
from catapa import TaxCalculationRequest

# Parse from JSON
json_str = '{"employee_id": "example"}'
tax_calculation_request = TaxCalculationRequest.from_json(json_str)

# Convert to JSON
print(tax_calculation_request.to_json())
```

### Working with dictionaries

```python
from catapa import TaxCalculationRequest

# Convert to/from dictionary
data_dict = tax_calculation_request.to_dict()
tax_calculation_request = TaxCalculationRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_calculation_request.employee_id)
# Update properties
tax_calculation_request.employee_id = "new_value"
```
