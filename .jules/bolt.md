## 2024-05-19 - [Optimize PowerShell arrays matching and element counting]
**Learning:** In PowerShell, using pipelines such as `| Measure-Object` and `| Where-Object` for simple array operations is surprisingly expensive due to pipeline overhead and object instantiation.
**Action:** Replace pipelines with array casting syntax like `@($var).Count` and `@(@($var) -eq 'val').Count` when safe to do so. Ensure that variable assignments are accurately reflecting array values instead of a single string for proper string parsing.
