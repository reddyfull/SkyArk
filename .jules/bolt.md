## 2024-05-24 - [Optimize pipeline counting in PowerShell]
**Learning:** In PowerShell, using `Where-Object` and `Measure-Object` on a comma-separated scalar string doesn't evaluate individual elements efficiently and sometimes causes logic bugs when counting occurrences. Using `-split` and array operators (e.g. `@(var -split ',') -like 'pattern'`) is much faster and avoids the pipeline overhead.
**Action:** Replace `Where-Object | Measure-Object` pipelines with `.Count` and array operators (`-split`, `-like`, `-eq`) where possible for safe string and primitive counting.
