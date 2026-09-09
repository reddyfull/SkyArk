## 2024-05-24 - [Avoid O(N^2) array concatenation in PowerShell loops]
**Learning:** Using the `+=` operator on arrays (e.g., `$array += $element`) inside loops creates a severe O(N^2) performance bottleneck in PowerShell because it allocates a new array each time. For large datasets like AD users or tenants, this drastically impacts execution time and memory usage.
**Action:** Replace `+=` array concatenation with direct pipeline assignment (e.g., `$array = ... | foreach { ... }`) or use `System.Collections.Generic.List[T]` with the `.Add()` method to achieve O(N) performance.
