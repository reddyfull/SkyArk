## 2024-05-24 - PowerShell Pipeline Overhead
**Learning:** PowerShell pipeline operations (`Where-Object | Measure-Object`) carry significant overhead inside loops. Replacing them with native array operators (`@(@($var) -eq 'pattern').Count`) is ~98% faster.
**Action:** Use native array casting and filtering when counting elements or checking conditions within large loops to avoid pipeline overhead.
