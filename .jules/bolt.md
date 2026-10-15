## 2024-05-24 - PowerShell Pipeline and Array Concatenation Overhead
**Learning:** In PowerShell, using `+=` on arrays inside loops causes O(N^2) allocations. Furthermore, `Where-Object | Measure-Object` incurs severe pipeline overhead (taking ~40-100x longer than native array checking), especially on scalar values.
**Action:** Use `System.Collections.Generic.List[T]` for collection building and replace pipeline-based counting with array-wrapped native filters (`@(@($var) -match 'pattern').Count`) for major speedups without losing scalar safety.
