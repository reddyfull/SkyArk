## 2024-05-06 - Fixing O(N^2) Array Operations in PowerShell
**Learning:** Using the `+=` operator for array concatenation inside loops in PowerShell allocates a new array each time, causing severe O(N^2) performance bottlenecks on large datasets (e.g. 200,000 users).
**Action:** Replace `+=` with direct pipeline assignment (e.g., `$array = ... | foreach { ... }`) to achieve O(N) performance.
