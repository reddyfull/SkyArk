## 2026-04-26 - [PowerShell Array Concatenation Bottleneck]
**Learning:** Using the `+=` operator for array concatenation inside loops in PowerShell allocates a new array each time, causing severe O(N^2) bottlenecks on large datasets.
**Action:** Always prefer direct pipeline assignment (e.g., `$array = @( ... | foreach { ... })`) to achieve O(N) performance and avoid array reallocation.
