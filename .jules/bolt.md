## 2024-05-24 - PowerShell Array Concatenation Bottleneck
**Learning:** In PowerShell, using the `+=` operator for array concatenation inside loops creates severe O(N^2) performance bottlenecks on large datasets because it allocates a new array each time.
**Action:** When accumulating results in loops in PowerShell scripts, always prefer direct pipeline assignment (e.g., `$array = $collection | foreach { ... }`) to achieve O(N) performance.
