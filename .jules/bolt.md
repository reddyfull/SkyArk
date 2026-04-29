## 2024-05-24 - [Optimize array append performance in PowerShell loops]
**Learning:** In PowerShell, using the `+=` operator for array concatenation inside loops creates a new array and copies all elements each iteration. This results in severe O(N^2) time complexity and memory overhead, causing significant performance bottlenecks on large datasets.
**Action:** Instead of `+=`, use direct pipeline assignments (e.g., `$array = $collection | foreach { ... }`) to build arrays inside loops. This achieves O(N) performance and avoids unnecessary reallocation overhead.
