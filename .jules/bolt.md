
## 2024-05-24 - [PowerShell Array Concatenation Bottleneck]
**Learning:** Using the `+=` operator for array concatenation inside loops in PowerShell scripts creates severe O(N^2) memory bottlenecks on large datasets because it allocates a new array each time. This is especially problematic in environments parsing large volumes of data like AAD user lists.
**Action:** Always prefer direct pipeline assignment (e.g., `$array = ... | foreach { ... }`) to achieve O(N) performance for building output arrays.
