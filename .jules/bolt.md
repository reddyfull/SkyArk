
## 2026-11-05 - PowerShell Pipeline Overhead Optimization
**Learning:** Using `Where-Object` and `Measure-Object` in a pipeline adds significant overhead, especially inside loops, when evaluating arrays or strings in PowerShell.
**Action:** Replace `($var | Where-Object {$_ -eq 'val'} | Measure-Object).Count` with native array matching `@(@($var) -eq 'val').Count` for massive speed improvements (O(N) constant factor reduction) while preserving correct scalar, null, and array evaluation semantics.
