## 2024-05-24 - [Optimize Measure-Object Performance]
**Learning:** In PowerShell 3.0+, using `.Count` on variables directly is much faster than piping to `Measure-Object`, saving significant pipeline overhead. This is especially true for counting array items or checking scalar values.
**Action:** Replace `| Measure-Object | Select-Object -ExpandProperty Count` or `( ... | Measure-Object).Count` with `.Count` directly on arrays or explicit array wrappers.
