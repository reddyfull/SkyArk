## 2024-05-25 - Measure-Object pipeline replacement
**Learning:** In PowerShell, using `| Measure-Object` for simple element counting on arrays introduces massive pipeline overhead (e.g. 2500ms vs 72ms for 1000 iterations). By replacing it with native array properties `@(var).Count`, we improve execution time significantly. This also safely handles nulls (returns 0), scalars (returns 1), and arrays (returns length).
**Action:** Replace `$(var | Measure-Object).count` with `@(var).Count` for performance-critical path processing in PowerShell.
