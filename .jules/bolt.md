## 2024-05-24 - Avoid += for Array Concatenation in PowerShell
**Learning:** Using `+=` to append to arrays in PowerShell inside loops creates severe O(N^2) performance bottlenecks on large datasets because PowerShell arrays are immutable, resulting in the array being copied on every iteration.
**Action:** Always prefer direct pipeline assignment (e.g., `$array = $collection | foreach { ... }`) when accumulating results in PowerShell loops, as it handles collections natively and operates in O(N) time.
