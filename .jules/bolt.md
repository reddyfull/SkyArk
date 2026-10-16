## 2024-05-24 - Performance Optimizations in PowerShell
**Learning:** PowerShell's pipeline operators like `| Measure-Object` and array appending with `+=` can become severe performance bottlenecks in loops. Using `@(array).Count` and `System.Collections.Generic.List[T]` are orders of magnitude faster.
**Action:** Replace `| Measure-Object` with `@(array).Count` and `@()` with `.Add()` when creating collections in PowerShell.
