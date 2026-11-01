## 2024-11-01 - Pipeline Overhead in Loop
**Learning:** Using `Where-Object | Measure-Object` inside loops causes massive performance degradation in PowerShell due to pipeline overhead. Replacing it with native array casting (e.g., `@(@($var) -eq ...).Count`) achieves significant speedups (~80x faster) while safely preserving scalar and array semantics.
**Action:** Always prefer native array casts over pipeline operators for counting or filtering when optimizing loop performance.
