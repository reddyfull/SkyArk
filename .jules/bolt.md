## 2024-05-20 - [Optimize PowerShell Array Concatenation]
**Learning:** In PowerShell, using the `+=` operator for array concatenation inside a loop (e.g., `$array += $item`) leads to O(N^2) time complexity and severe performance degradation on large datasets, because a new array is allocated and the entire contents are copied every time.
**Action:** Use direct pipeline assignment (e.g., `$array = @($items | foreach { ... })`) to take advantage of PowerShell's optimized pipeline and achieve O(N) performance for building collections.
