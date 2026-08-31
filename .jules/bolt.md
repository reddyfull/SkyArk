## 2026-08-31 - [Optimize Where-Object and Measure-Object]
**Learning:** Found usages of `Where-Object | Measure-Object` for string character counting and filtering in AWStealth.ps1. String filtering with `Where-Object` (like string `-eq ','`) evaluates the entire string as a single object which returns nothing leading to logic bugs. Also `Measure-Object` incurs a huge pipeline overhead in PowerShell.
**Action:** Replaced `Where-Object` on strings with `-split` combined with `.Count` for performance and correctness.
