## 2026-08-02 - [Optimize PowerShell Array Concatenation]
**Learning:** In PowerShell, using the `+=` operator on arrays (e.g., `$array += $element`) inside loops creates a new array object and copies all existing elements on every iteration, leading to O(N^2) complexity.
**Action:** Replace `$array = @(); ... | foreach { $array += $_ }` with direct pipeline assignment (e.g., `$array = ... | foreach { $_ }`) or use `[System.Collections.Generic.List[T]]::new()` and its `.Add()` method to achieve O(N) performance on large datasets.
